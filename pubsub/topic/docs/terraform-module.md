# topic

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 5.0.0 |
| <a name="requirement_google-beta"></a> [google-beta](#requirement\_google-beta) | >= 5.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | >= 5.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_pubsub_subscription.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/pubsub_subscription) | resource |
| [google_pubsub_topic.topic](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/pubsub_topic) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_kms_key_id"></a> [kms\_key\_id](#input\_kms\_key\_id) | The kms key id for the topic | `string` | `null` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | Labels for the topic | `map(string)` | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the topic | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | The project for the topic | `string` | n/a | yes |
| <a name="input_subscriptions"></a> [subscriptions](#input\_subscriptions) | Topic subscriptions. Also define push configs for push subscriptions. If options is set to null subscription defaults will be used. Labels default to topic labels if set to null. | <pre>list(object({<br>    name                         = string<br>    labels                       = optional(map(string))<br>    ack_deadline_seconds         = optional(number)<br>    message_retention_duration   = optional(string)<br>    retain_acked_messages        = optional(bool, false)<br>    expiration_policy_ttl        = optional(string)<br>    filter                       = optional(string)<br>    enable_message_ordering      = optional(bool, false)<br>    enable_exactly_once_delivery = optional(bool, false)<br>    dead_letter_policy = optional(object({<br>      topic                 = string<br>      max_delivery_attempts = optional(number)<br>    }))<br>    retry_policy = optional(object({<br>      minimum_backoff = optional(number)<br>      maximum_backoff = optional(number)<br>    }))<br><br>    bigquery = optional(object({<br>      table               = string<br>      use_topic_schema    = optional(bool, false)<br>      write_metadata      = optional(bool, false)<br>      drop_unknown_fields = optional(bool, false)<br>    }))<br>    cloud_storage = optional(object({<br>      bucket          = string<br>      filename_prefix = optional(string)<br>      filename_suffix = optional(string)<br>      max_duration    = optional(string)<br>      max_bytes       = optional(number)<br>      avro_config = optional(object({<br>        write_metadata = optional(bool, false)<br>      }))<br>    }))<br>    push = optional(object({<br>      endpoint   = string<br>      attributes = optional(map(string))<br>      no_wrapper = optional(bool, false)<br>      oidc_token = optional(object({<br>        audience              = optional(string)<br>        service_account_email = optional(string)<br>      }))<br>    }))<br><br>    iam = optional(map(list(string)), {})<br>    iam_bindings = optional(map(object({<br>      members = list(string)<br>      role    = string<br>      condition = optional(object({<br>        expression  = string<br>        title       = string<br>        description = optional(string)<br>      }))<br>    })), {})<br>    iam_bindings_additive = optional(map(object({<br>      member = optional(string)<br>      role   = optional(string)<br>      condition = optional(object({<br>        expression  = string<br>        title       = string<br>        description = optional(string)<br>      }))<br>    })), {})<br>  }))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
