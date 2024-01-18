# cloudfunction

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 5.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | >= 5.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_cloudfunctions_function.cloudfunction](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloudfunctions_function) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_available_memory_mb"></a> [available\_memory\_mb](#input\_available\_memory\_mb) | The amount of memory for the cloud function | `number` | `128` | no |
| <a name="input_description"></a> [description](#input\_description) | The description for the cloud function | `string` | `null` | no |
| <a name="input_docker_repository"></a> [docker\_repository](#input\_docker\_repository) | The docker repository for the cloud unction source code | `string` | `null` | no |
| <a name="input_entry_point"></a> [entry\_point](#input\_entry\_point) | The entry point in the source code for the cloud function | `string` | n/a | yes |
| <a name="input_environment_variables"></a> [environment\_variables](#input\_environment\_variables) | Environment variables for the cloud function | `map(string)` | `null` | no |
| <a name="input_kms_key_id"></a> [kms\_key\_id](#input\_kms\_key\_id) | The kms key to encrypt the cloud function | `string` | `null` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | Labels for the cloud function | `map(string)` | `{}` | no |
| <a name="input_location"></a> [location](#input\_location) | The location for the cloud function | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name for the cloud function | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | The project for the cloud function | `string` | n/a | yes |
| <a name="input_pubsub_topic_name"></a> [pubsub\_topic\_name](#input\_pubsub\_topic\_name) | The name of the pubsub topic that will trigger this cloud function | `string` | n/a | yes |
| <a name="input_runtime"></a> [runtime](#input\_runtime) | The runtime for the cloud function | `string` | `"python311"` | no |
| <a name="input_service_account_email"></a> [service\_account\_email](#input\_service\_account\_email) | The service account for the cloud function | `string` | n/a | yes |
| <a name="input_source_archive_bucket"></a> [source\_archive\_bucket](#input\_source\_archive\_bucket) | The storage bucket for the cloud function source code | `string` | n/a | yes |
| <a name="input_source_archive_object"></a> [source\_archive\_object](#input\_source\_archive\_object) | The name of the source code file in the storage bucket | `string` | n/a | yes |
| <a name="input_vpc_connector"></a> [vpc\_connector](#input\_vpc\_connector) | The VPC Access Connector for the cloud function | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_google_cloudfunctions_function"></a> [google\_cloudfunctions\_function](#output\_google\_cloudfunctions\_function) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
