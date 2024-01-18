#locals {
#  subscription_iam = flatten([
#    for k, v in var.subscriptions : [
#      for role, members in v.iam: {
#        subscription = k
#        role         = role
#        members      = members
#      }
#    ]
#  ])
#  subscription_iam_bindings = merge([
#    for k, v in var.subscriptions : {
#      for binding_key, data in v.iam_bindings :
#      binding_key => {
#        subscription = k
#        role         = data.role
#        members      = data.members
#        condition    = data.condition
#      }
#    }
#  ]...)
#  subscription_iam_bindings_additive = merge([
#    for k, v in var.subscriptions : {
#      for binding_key, data in v.iam_bindings_additive :
#      binding_key => {
#        subscription = k
#        role         = data.role
#        member       = data.member
#        condition    = data.condition
#      }
#    }
#  ]...)
#}


resource "google_pubsub_topic" "topic" {
  name         = var.name
  project      = var.project
  labels       = var.labels
  kms_key_name = var.kms_key_id
}

resource "google_pubsub_subscription" "default" {
  for_each                     = { for entry in var.subscriptions : entry.name => entry }
  project                      = var.project
  name                         = each.key
  topic                        = google_pubsub_topic.topic.name
  labels                       = each.value.labels
  ack_deadline_seconds         = each.value.ack_deadline_seconds
  message_retention_duration   = each.value.message_retention_duration
  retain_acked_messages        = each.value.retain_acked_messages
  filter                       = each.value.filter
  enable_message_ordering      = each.value.enable_message_ordering
  enable_exactly_once_delivery = each.value.enable_exactly_once_delivery

  dynamic "expiration_policy" {
    for_each = each.value.expiration_policy_ttl == null ? [] : [""]
    content {
      ttl = each.value.expiration_policy_ttl
    }
  }

  dynamic "dead_letter_policy" {
    for_each = each.value.dead_letter_policy == null ? [] : [""]
    content {
      dead_letter_topic     = each.value.dead_letter_policy.topic
      max_delivery_attempts = each.value.dead_letter_policy.max_delivery_attempts
    }
  }

  dynamic "retry_policy" {
    for_each = each.value.retry_policy == null ? [] : [""]
    content {
      maximum_backoff = each.value.retry_policy.maximum_backoff
      minimum_backoff = each.value.retry_policy.minimum_backoff
    }
  }

  dynamic "push_config" {
    for_each = each.value.push == null ? [] : [""]
    content {
      push_endpoint = each.value.push.endpoint
      attributes    = each.value.push.attributes
      dynamic "oidc_token" {
        for_each = each.value.push.oidc_token == null ? [] : [""]
        content {
          service_account_email = each.value.push.oidc_token.service_account_email
          audience              = each.value.push.oidc_token.audience
        }
      }
    }
  }

  dynamic "bigquery_config" {
    for_each = each.value.bigquery == null ? [] : [""]
    content {
      table               = each.value.bigquery.table
      use_topic_schema    = each.value.bigquery.use_topic_schema
      write_metadata      = each.value.bigquery.write_metadata
      drop_unknown_fields = each.value.bigquery.drop_unknown_fields
    }
  }

  dynamic "cloud_storage_config" {
    for_each = each.value.cloud_storage == null ? [] : [""]
    content {
      bucket          = each.value.cloud_storage.bucket
      filename_prefix = each.value.cloud_storage.filename_prefix
      filename_suffix = each.value.cloud_storage.filename_suffix
      max_duration    = each.value.cloud_storage.max_duration
      max_bytes       = each.value.cloud_storage.max_bytes
      dynamic "avro_config" {
        for_each = each.value.cloud_storage.avro_config == null ? [] : [""]
        content {
          write_metadata = each.value.cloud_storage.avro_config.write_metadata
        }
      }
    }
  }
}
