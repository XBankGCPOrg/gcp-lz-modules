# routes

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
| [google_compute_route.route](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_route) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_module_depends_on"></a> [module\_depends\_on](#input\_module\_depends\_on) | List any resources this module depends on. | `list(any)` | `[]` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The Project ID for the VPC | `string` | n/a | yes |
| <a name="input_routes"></a> [routes](#input\_routes) | n/a | <pre>map(object({<br>    name                   = string<br>    description            = string<br>    dest_range             = string<br>    next_hop_gateway       = optional(string)<br>    next_hop_ip            = optional(string)<br>    next_hop_instance      = optional(string)<br>    next_hop_instance_zone = optional(string)<br>    next_hop_vpn_tunnel    = optional(string)<br>    next_hop_ilb           = optional(string)<br>    priority               = optional(string)<br>  }))</pre> | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | The name of the network | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
