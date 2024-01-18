# interconnect-attachment

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
| [google_compute_interconnect_attachment.attachment](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_interconnect_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_enabled"></a> [admin\_enabled](#input\_admin\_enabled) | Whether the VLAN attachment is enabled or disabled | `bool` | `true` | no |
| <a name="input_bandwidth"></a> [bandwidth](#input\_bandwidth) | Provisioned bandwidth capacity for the interconnect attachment | `string` | `null` | no |
| <a name="input_candidate_subnets"></a> [candidate\_subnets](#input\_candidate\_subnets) | Up to 16 candidate prefixes that can be used to restrict the allocation of cloudRouterIpAddress and customerRouterIpAddress for this attachment. All prefixes must be within link-local address space (169.254.0.0/16) and must be /29 or shorter (/28, /27, etc). | `list(string)` | `null` | no |
| <a name="input_description"></a> [description](#input\_description) | An optional description of this resource | `string` | `null` | no |
| <a name="input_edge_availability_domain"></a> [edge\_availability\_domain](#input\_edge\_availability\_domain) | The edge availabilty domain is used in Partner Interconnect | `string` | `null` | no |
| <a name="input_encryption"></a> [encryption](#input\_encryption) | Specified at attachment creation for PARTNER or DEDICATED attachments | `string` | `null` | no |
| <a name="input_interconnect"></a> [interconnect](#input\_interconnect) | URL of the underlying Interconnect object that this attachment's traffic will traverse through. | `string` | n/a | yes |
| <a name="input_ipsec_internal_addresses"></a> [ipsec\_internal\_addresses](#input\_ipsec\_internal\_addresses) | Used only for interconnect attachment that has the encryption option as IPSEC | `list(string)` | `[]` | no |
| <a name="input_mtu"></a> [mtu](#input\_mtu) | Maximum Transmission Unit (MTU), in bytes, of packets passing through this interconnect attachment. Currently, only 1440 and 1500 are allowed. If not specified, the value will default to 1440. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the interconnect attachment | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | The project ID to deploy to | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Region where the attachment resides | `string` | n/a | yes |
| <a name="input_router"></a> [router](#input\_router) | Name of the router the attachment resides | `string` | n/a | yes |
| <a name="input_type"></a> [type](#input\_type) | The type of InterconnectAttachment you wish to create | `string` | `"DEDICATED"` | no |
| <a name="input_vlan_tag8021q"></a> [vlan\_tag8021q](#input\_vlan\_tag8021q) | The IEEE 802.1Q VLAN tag for this attachment, in the range 2-4094. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_attachment"></a> [attachment](#output\_attachment) | The created attachment |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
