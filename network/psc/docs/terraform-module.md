# psc

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
| <a name="provider_google-beta"></a> [google-beta](#provider\_google-beta) | >= 5.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google-beta_google_compute_forwarding_rule.psc_apigee_forwarding_rule](https://registry.terraform.io/providers/hashicorp/google-beta/latest/docs/resources/google_compute_forwarding_rule) | resource |
| [google_compute_address.psc_internal_ip](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The Project ID for the VPC | `string` | `"prj-c-networking"` | no |
| <a name="input_psc_forwarding_rule_name"></a> [psc\_forwarding\_rule\_name](#input\_psc\_forwarding\_rule\_name) | Name of the GCP PSC LB forwarding rule | `string` | n/a | yes |
| <a name="input_psc_internal_ip_name"></a> [psc\_internal\_ip\_name](#input\_psc\_internal\_ip\_name) | Name of the GCP PSC LB internal IP | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The GCP region | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
