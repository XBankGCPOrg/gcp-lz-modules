locals {
  key_ring          = var.key_ring != null ? var.key_ring : google_kms_key_ring.key_ring[0].id
  key               = var.prevent_destroy ? google_kms_crypto_key.type_2_key[0].id : google_kms_crypto_key.type_1_key[0].id
  identity_services = setsubtract(var.services, ["storage.googleapis.com", "bigquery.googleapis.com"])

  crypters = concat(
    [for identity in module.service_identity : "serviceAccount:${identity.email}"],
    contains(var.services, "storage.googleapis.com") ? ["serviceAccount:${data.google_storage_project_service_account.account[0].email_address}"] : [],
    contains(var.services, "bigquery.googleapis.com") ? ["serviceAccount:${data.google_bigquery_default_service_account.account[0].email}"] : []
  )
}

module "service_identity" {
  source   = "github.com/XBankGCPOrg/gcp-lz-modules//resources/service_identity?ref=main"
  for_each = local.identity_services
  project  = var.name
  service  = each.value
}

data "google_storage_project_service_account" "account" {
  count   = contains(var.services, "storage.googleapis.com") ? 1 : 0
  project = var.name
}

data "google_bigquery_default_service_account" "account" {
  count   = contains(var.services, "bigquery.googleapis.com") ? 1 : 0
  project = var.name
}

resource "random_string" "suffix" {
  length  = 4
  upper   = false
  special = false
}

resource "google_kms_key_ring" "key_ring" {
  count    = var.key_ring != null ? 0 : 1
  name     = var.key_ring_name
  project  = var.project
  location = var.location
}

#terraform destroy will delete this kms key
resource "google_kms_crypto_key" "type_1_key" {
  count                      = var.prevent_destroy ? 0 : 1
  name                       = var.name
  key_ring                   = local.key_ring
  rotation_period            = var.rotation_period
  destroy_scheduled_duration = var.destroy_scheduled_duration
  purpose                    = var.purpose
  labels                     = var.labels

  dynamic "version_template" {
    for_each = var.algorithm != null ? [1] : []

    content {
      algorithm        = var.algorithm
      protection_level = var.protection_level
    }
  }

  lifecycle {
    prevent_destroy = false
  }
}

#terraform destroy will not delete this kms key
resource "google_kms_crypto_key" "type_2_key" {
  count                      = var.prevent_destroy ? 1 : 0
  name                       = var.name
  key_ring                   = local.key_ring
  rotation_period            = var.rotation_period
  destroy_scheduled_duration = var.destroy_scheduled_duration
  purpose                    = var.purpose
  labels                     = var.labels

  dynamic "version_template" {
    for_each = var.algorithm != null ? [1] : []

    content {
      algorithm        = var.algorithm
      protection_level = var.protection_level
    }
  }

  lifecycle {
    prevent_destroy = true
  }
}

resource "google_kms_crypto_key_iam_binding" "encrypters" {
  crypto_key_id = local.key
  role          = "roles/cloudkms.cryptoKeyEncrypter"
  members       = concat(var.encrypters, local.crypters)
}

resource "google_kms_crypto_key_iam_binding" "decrypters" {
  crypto_key_id = local.key
  role          = "roles/cloudkms.cryptoKeyDecrypter"
  members       = concat(var.decrypters, local.crypters)
}

