# artifact_registry

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5 |
| <a name="requirement_google-beta"></a> [google-beta](#requirement\_google-beta) | >= 5.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google-beta"></a> [google-beta](#provider\_google-beta) | >= 5.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google-beta_google_artifact_registry_repository.repository](https://registry.terraform.io/providers/hashicorp/google-beta/latest/docs/resources/google_artifact_registry_repository) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | The descriptoin of the registry | `string` | n/a | yes |
| <a name="input_format"></a> [format](#input\_format) | The format of the registry | `string` | `"DOCKER"` | no |
| <a name="input_kms_key_id"></a> [kms\_key\_id](#input\_kms\_key\_id) | The kms key to encrypt of the registry | `string` | `null` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | The labels for the registry | `map(string)` | `null` | no |
| <a name="input_location"></a> [location](#input\_location) | The location of the registry | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the registry | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | The project for the registry | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_location"></a> [location](#output\_location) | n/a |
| <a name="output_name"></a> [name](#output\_name) | n/a |
| <a name="output_project"></a> [project](#output\_project) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
