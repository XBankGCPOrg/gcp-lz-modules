resource "google_compute_address" "ip" {
  count         = var.global ? 0 : 1
  project       = var.project_id
  region        = var.region
  name          = var.name
  address       = var.address
  subnetwork    = var.subnetwork != null ? "projects/${var.project_id}/regions/${var.region}/subnetworks/${var.subnetwork}" : null
  address_type  = var.address_type
  purpose       = var.address_type == "INTERNAL" ? var.purpose : null
  network_tier  = var.address_type == "INTERNAL" ? null : var.network_tier
  prefix_length = var.prefix_length
  network       = var.network != null ? "projects/${var.project_id}/global/networks/${var.network}" : null
}

resource "google_compute_global_address" "global_ip" {
  count         = var.global ? 1 : 0
  project       = var.project_id
  name          = var.name
  address_type  = var.address_type
  address       = var.address
  network       = var.address_type == "EXTERNAL" ? null : var.network == null ? "projects/${var.project_id}/regions/${var.region}/subnetworks/${var.subnetwork}" : "projects/${var.project_id}/global/networks/${var.network}"
  purpose       = var.global && var.address_type == "INTERNAL" ? "VPC_PEERING" : null
  prefix_length = var.prefix_length
  ip_version    = var.ip_version
}