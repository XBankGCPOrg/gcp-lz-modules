# dataset

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
| [google_bigquery_dataset.dataset](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/bigquery_dataset) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_delete_contents_on_destroy"></a> [delete\_contents\_on\_destroy](#input\_delete\_contents\_on\_destroy) | Delete contents on destroy | `bool` | `false` | no |
| <a name="input_description"></a> [description](#input\_description) | The description for the bigquery dataset | `string` | `null` | no |
| <a name="input_expiration_days"></a> [expiration\_days](#input\_expiration\_days) | Number of days to keep data (null = indefinite) | `number` | `null` | no |
| <a name="input_kms_key_id"></a> [kms\_key\_id](#input\_kms\_key\_id) | The KMS key for the dataset | `string` | `null` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | The labels for the bigquery dataset | `map(string)` | `{}` | no |
| <a name="input_location"></a> [location](#input\_location) | The location of the bigquery dataset | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name for the bigquery dataset | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | The project for the bigquery dataset | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dataset_id"></a> [dataset\_id](#output\_dataset\_id) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
