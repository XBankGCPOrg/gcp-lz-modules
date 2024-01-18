# firewall-rules

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
| [google_compute_firewall.firewall-rules](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow"></a> [allow](#input\_allow) | n/a | <pre>list(object({<br>    protocol = string<br>    ports    = optional(list(string))<br>  }))</pre> | `[]` | no |
| <a name="input_deny"></a> [deny](#input\_deny) | n/a | <pre>list(object({<br>    protocol = string<br>    ports    = optional(list(string))<br>  }))</pre> | `[]` | no |
| <a name="input_description"></a> [description](#input\_description) | Description of the fireall rule | `string` | `null` | no |
| <a name="input_destination_ranges"></a> [destination\_ranges](#input\_destination\_ranges) | n/a | `list(string)` | `[]` | no |
| <a name="input_direction"></a> [direction](#input\_direction) | INGRESS or EGRESS | `string` | `"INGRESS"` | no |
| <a name="input_disabled"></a> [disabled](#input\_disabled) | n/a | `bool` | `null` | no |
| <a name="input_log_config"></a> [log\_config](#input\_log\_config) | n/a | <pre>object({<br>    metadata = string<br>  })</pre> | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the firewall rule | `string` | n/a | yes |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | Network name | `string` | n/a | yes |
| <a name="input_priority"></a> [priority](#input\_priority) | n/a | `number` | `null` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Project Id | `string` | n/a | yes |
| <a name="input_source_ranges"></a> [source\_ranges](#input\_source\_ranges) | n/a | `list(string)` | `[]` | no |
| <a name="input_source_service_accounts"></a> [source\_service\_accounts](#input\_source\_service\_accounts) | n/a | `list(string)` | `[]` | no |
| <a name="input_source_tags"></a> [source\_tags](#input\_source\_tags) | n/a | `list(string)` | `[]` | no |
| <a name="input_target_service_accounts"></a> [target\_service\_accounts](#input\_target\_service\_accounts) | n/a | `list(string)` | `[]` | no |
| <a name="input_target_tags"></a> [target\_tags](#input\_target\_tags) | n/a | `list(string)` | `[]` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
