# ip-address

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
| [google_compute_address.ip](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address) | resource |
| [google_compute_global_address.global_ip](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_global_address) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_address"></a> [address](#input\_address) | IP addresses to create.  GCP will reserve unreserved addresses if given the value "".  If multiple names are given the default value is sufficient to have multiple addresses automatically picked for each name. | `string` | `""` | no |
| <a name="input_address_type"></a> [address\_type](#input\_address\_type) | The type of address to reserve, either "INTERNAL" or "EXTERNAL". If unspecified, defaults to "INTERNAL". | `string` | `"INTERNAL"` | no |
| <a name="input_global"></a> [global](#input\_global) | The scope in which the address should live. If set to true, the IP address will be globally scoped. Defaults to false, i.e. regionally scoped. When set to true, do not provide a subnetwork. | `bool` | `false` | no |
| <a name="input_ip_version"></a> [ip\_version](#input\_ip\_version) | The IP Version that will be used by this address. | `string` | `"IPV4"` | no |
| <a name="input_name"></a> [name](#input\_name) | IP address resource names to create.  This is the GCP resource name and not the associated hostname of the IP address.  Existing resource names may be found with `gcloud compute addresses list` (e.g. ["gusw1-dev-fooapp-fe-0001-a-001-ip"]) | `string` | n/a | yes |
| <a name="input_network"></a> [network](#input\_network) | Network name | `string` | `null` | no |
| <a name="input_network_tier"></a> [network\_tier](#input\_network\_tier) | The networking tier used for configuring this address. | `string` | `"PREMIUM"` | no |
| <a name="input_prefix_length"></a> [prefix\_length](#input\_prefix\_length) | The prefix length of the IP range. | `number` | `null` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The project ID to create the address in | `string` | n/a | yes |
| <a name="input_purpose"></a> [purpose](#input\_purpose) | The purpose of the resource(GCE\_ENDPOINT, SHARED\_LOADBALANCER\_VIP, VPC\_PEERING). | `string` | `"GCE_ENDPOINT"` | no |
| <a name="input_region"></a> [region](#input\_region) | The region to create the address in | `string` | `null` | no |
| <a name="input_subnetwork"></a> [subnetwork](#input\_subnetwork) | The subnet containing the address.  For EXTERNAL addresses use the empty string, "".  (e.g. "projects/<project-name>/regions/<region-name>/subnetworks/<subnetwork-name>") | `string` | `null` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
