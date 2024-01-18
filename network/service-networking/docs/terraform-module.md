# service-networking

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
| [google_compute_network_peering_routes_config.peering_routes](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network_peering_routes_config) | resource |
| [google_service_networking_connection.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_networking_connection) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_export_custom_routes"></a> [export\_custom\_routes](#input\_export\_custom\_routes) | Export custom routes default is false | `bool` | `false` | no |
| <a name="input_import_custom_routes"></a> [import\_custom\_routes](#input\_import\_custom\_routes) | Import custom routes default false | `bool` | `false` | no |
| <a name="input_network"></a> [network](#input\_network) | Network name | `string` | `null` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The project ID to create the address in | `string` | n/a | yes |
| <a name="input_reserved_peering_ranges"></a> [reserved\_peering\_ranges](#input\_reserved\_peering\_ranges) | List of ip address name | `list(string)` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
