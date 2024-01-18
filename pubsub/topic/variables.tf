variable "name" {
  description = "The name of the topic"
  type        = string
}

variable "project" {
  description = "The project for the topic"
  type        = string
}

variable "kms_key_id" {
  description = "The kms key id for the topic"
  type        = string
  default     = null
}

variable "labels" {
  description = "Labels for the topic"
  type        = map(string)
  default     = {}
}

variable "subscriptions" {
  description = "Topic subscriptions. Also define push configs for push subscriptions. If options is set to null subscription defaults will be used. Labels default to topic labels if set to null."
  type = list(object({
    name                         = string
    labels                       = optional(map(string))
    ack_deadline_seconds         = optional(number)
    message_retention_duration   = optional(string)
    retain_acked_messages        = optional(bool, false)
    expiration_policy_ttl        = optional(string)
    filter                       = optional(string)
    enable_message_ordering      = optional(bool, false)
    enable_exactly_once_delivery = optional(bool, false)
    dead_letter_policy = optional(object({
      topic                 = string
      max_delivery_attempts = optional(number)
    }))
    retry_policy = optional(object({
      minimum_backoff = optional(number)
      maximum_backoff = optional(number)
    }))

    bigquery = optional(object({
      table               = string
      use_topic_schema    = optional(bool, false)
      write_metadata      = optional(bool, false)
      drop_unknown_fields = optional(bool, false)
    }))
    cloud_storage = optional(object({
      bucket          = string
      filename_prefix = optional(string)
      filename_suffix = optional(string)
      max_duration    = optional(string)
      max_bytes       = optional(number)
      avro_config = optional(object({
        write_metadata = optional(bool, false)
      }))
    }))
    push = optional(object({
      endpoint   = string
      attributes = optional(map(string))
      no_wrapper = optional(bool, false)
      oidc_token = optional(object({
        audience              = optional(string)
        service_account_email = optional(string)
      }))
    }))

    iam = optional(map(list(string)), {})
    iam_bindings = optional(map(object({
      members = list(string)
      role    = string
      condition = optional(object({
        expression  = string
        title       = string
        description = optional(string)
      }))
    })), {})
    iam_bindings_additive = optional(map(object({
      member = optional(string)
      role   = optional(string)
      condition = optional(object({
        expression  = string
        title       = string
        description = optional(string)
      }))
    })), {})
  }))
  default  = []
  nullable = false
}
