# router

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
| [google_compute_router.router](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bgp"></a> [bgp](#input\_bgp) | BGP information specific to this router. | <pre>object({<br>    asn               = string<br>    advertise_mode    = optional(string, "CUSTOM")<br>    advertised_groups = optional(list(string))<br>    advertised_ip_ranges = optional(list(object({<br>      range       = string<br>      description = optional(string)<br>    })), [])<br>    keepalive_interval = optional(number)<br>  })</pre> | `null` | no |
| <a name="input_description"></a> [description](#input\_description) | An optional description of this resource | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the router | `string` | n/a | yes |
| <a name="input_network"></a> [network](#input\_network) | A reference to the network to which this router belongs | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | The project ID to deploy to | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Region where the router resides | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_router"></a> [router](#output\_router) | Created Router |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
