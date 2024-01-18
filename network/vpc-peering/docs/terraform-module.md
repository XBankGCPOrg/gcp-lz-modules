# vpc-peering

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
| <a name="provider_google-beta"></a> [google-beta](#provider\_google-beta) | >= 5.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google-beta_google_compute_network_peering.local_network_peering](https://registry.terraform.io/providers/hashicorp/google-beta/latest/docs/resources/google_compute_network_peering) | resource |
| [google-beta_google_compute_network_peering.peer_network_peering](https://registry.terraform.io/providers/hashicorp/google-beta/latest/docs/resources/google_compute_network_peering) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_export_local_custom_routes"></a> [export\_local\_custom\_routes](#input\_export\_local\_custom\_routes) | Export custom routes from local to peering network | `bool` | `false` | no |
| <a name="input_export_peering_custom_routes"></a> [export\_peering\_custom\_routes](#input\_export\_peering\_custom\_routes) | Export custom routes from peering to local network | `bool` | `false` | no |
| <a name="input_local_network"></a> [local\_network](#input\_local\_network) | Link of the local network for VPC peering | `string` | n/a | yes |
| <a name="input_module_depends_on"></a> [module\_depends\_on](#input\_module\_depends\_on) | List any resources this module depends on. | `list(any)` | `[]` | no |
| <a name="input_peering_network"></a> [peering\_network](#input\_peering\_network) | Link of the peering network for VPC peering | `string` | n/a | yes |
| <a name="input_vpc_peering_name"></a> [vpc\_peering\_name](#input\_vpc\_peering\_name) | The environment ID | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
