# log_sink

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
| [google_logging_organization_sink.sink](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/logging_organization_sink) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_destination"></a> [destination](#input\_destination) | Destination for the log sink | `string` | n/a | yes |
| <a name="input_exclusions"></a> [exclusions](#input\_exclusions) | The exclusions to apply to the log sink | `list(any)` | `[]` | no |
| <a name="input_filter"></a> [filter](#input\_filter) | The filter for the log sink | `string` | n/a | yes |
| <a name="input_include_children"></a> [include\_children](#input\_include\_children) | Flag to include children | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the log sink | `string` | n/a | yes |
| <a name="input_org_id"></a> [org\_id](#input\_org\_id) | The organization of the log sink | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_writer_identity"></a> [writer\_identity](#output\_writer\_identity) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
