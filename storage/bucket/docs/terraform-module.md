# bucket

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
| [google_storage_bucket.bucket](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_kms_key_id"></a> [kms\_key\_id](#input\_kms\_key\_id) | KMS key for CMEK encryption | `string` | `null` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | Labels for the bucket | `map(string)` | `null` | no |
| <a name="input_location"></a> [location](#input\_location) | The location of the storage bucket | `string` | n/a | yes |
| <a name="input_log_bucket"></a> [log\_bucket](#input\_log\_bucket) | Log bucket for logging | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the storage bucket | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | The project of the storage bucket | `string` | n/a | yes |
| <a name="input_versioning"></a> [versioning](#input\_versioning) | Enable versioning | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
