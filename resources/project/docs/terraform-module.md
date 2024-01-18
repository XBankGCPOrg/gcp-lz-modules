# project

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

No modules.

## Resources

| Name | Type |
|------|------|
| [google_project.project](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project) | resource |
| [google_project_default_service_accounts.accounts](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_default_service_accounts) | resource |
| [google_project_service.service](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_service) | resource |
| [random_string.suffix](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_billing_account"></a> [billing\_account](#input\_billing\_account) | The billing account to use for this project | `string` | n/a | yes |
| <a name="input_folder"></a> [folder](#input\_folder) | The parent folder for the project | `string` | n/a | yes |
| <a name="input_imported_project_id"></a> [imported\_project\_id](#input\_imported\_project\_id) | The project id for importing project | `string` | `null` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | The labels for this project | `map(string)` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | The name for the project | `string` | n/a | yes |
| <a name="input_services"></a> [services](#input\_services) | The services to enable in this project | `set(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_number"></a> [number](#output\_number) | n/a |
| <a name="output_project_id"></a> [project\_id](#output\_project\_id) | n/a |
| <a name="output_services"></a> [services](#output\_services) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
