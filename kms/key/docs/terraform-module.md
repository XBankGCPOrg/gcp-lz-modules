# key

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 5.0.0 |
| <a name="requirement_google-beta"></a> [google-beta](#requirement\_google-beta) | >= 5.0.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 3.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | >= 5.0.0 |
| <a name="provider_random"></a> [random](#provider\_random) | >= 3.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_service_identity"></a> [service\_identity](#module\_service\_identity) | github.com/XBankGCPOrg/gcp-lz-modules//resources/service_identity | 35e1ac51b81725fb3378b83f10f3cae9b2956e78 |

## Resources

| Name | Type |
|------|------|
| [google_kms_crypto_key.type_1_key](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/kms_crypto_key) | resource |
| [google_kms_crypto_key.type_2_key](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/kms_crypto_key) | resource |
| [google_kms_crypto_key_iam_binding.decrypters](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/kms_crypto_key_iam_binding) | resource |
| [google_kms_crypto_key_iam_binding.encrypters](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/kms_crypto_key_iam_binding) | resource |
| [google_kms_key_ring.key_ring](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/kms_key_ring) | resource |
| [random_string.suffix](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |
| [google_bigquery_default_service_account.account](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/bigquery_default_service_account) | data source |
| [google_storage_project_service_account.account](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/storage_project_service_account) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_algorithm"></a> [algorithm](#input\_algorithm) | The algorithm for the key | `string` | `null` | no |
| <a name="input_decrypters"></a> [decrypters](#input\_decrypters) | A list of principals that are allowed to decrypt using this key | `list(string)` | `null` | no |
| <a name="input_destroy_scheduled_duration"></a> [destroy\_scheduled\_duration](#input\_destroy\_scheduled\_duration) | The destroy scheduled duration for the key | `string` | `null` | no |
| <a name="input_encrypters"></a> [encrypters](#input\_encrypters) | A list of principals that are allowed to encrypt using this key | `list(string)` | `null` | no |
| <a name="input_key_ring"></a> [key\_ring](#input\_key\_ring) | The key ring identifier - creates a key ring if null | `string` | `null` | no |
| <a name="input_key_ring_name"></a> [key\_ring\_name](#input\_key\_ring\_name) | The key ring name - required if key\_ring is null | `string` | `null` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | The labels to apply to the key | `map(string)` | `null` | no |
| <a name="input_location"></a> [location](#input\_location) | The location to create the key ring - required if key\_ring is null | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the key | `string` | n/a | yes |
| <a name="input_prevent_destroy"></a> [prevent\_destroy](#input\_prevent\_destroy) | Prevent the destruction of the key? | `bool` | `false` | no |
| <a name="input_project"></a> [project](#input\_project) | The project to create the key ring - required if key\_ring is null | `string` | `null` | no |
| <a name="input_protection_level"></a> [protection\_level](#input\_protection\_level) | The algorithm for the key | `string` | `null` | no |
| <a name="input_purpose"></a> [purpose](#input\_purpose) | The purpose of the key | `string` | `null` | no |
| <a name="input_rotation_period"></a> [rotation\_period](#input\_rotation\_period) | The rotation period for the key | `string` | `null` | no |
| <a name="input_services"></a> [services](#input\_services) | A list of services that will use the key | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_decrypters"></a> [decrypters](#output\_decrypters) | n/a |
| <a name="output_encrypters"></a> [encrypters](#output\_encrypters) | n/a |
| <a name="output_key_id"></a> [key\_id](#output\_key\_id) | n/a |
| <a name="output_key_ring_id"></a> [key\_ring\_id](#output\_key\_ring\_id) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
