# subnets

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
| <a name="provider_google"></a> [google](#provider\_google) | 5.5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_compute_subnetwork.subnets](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_subnets"></a> [subnets](#input\_subnets) | n/a | <pre>list(object({<br>    subnetName          = string<br>    vpcName             = string<br>    project             = string<br>    subnetIPRange       = string<br>    subnetRegion        = string<br>    description         = string<br>    privateGoogleAccess = bool<br>    purpose             = optional(string)<br>    secondarySubnets = optional(list(object({<br>      secondaryIPRangeName = optional(string)<br>      secondaryIPCIDRRange = optional(string)<br>    })))<br>    logConfig = optional(object({<br>      aggregationInterval = optional(string)<br>      flowSampling        = optional(number)<br>      metadata            = optional(string)<br>    }))<br>  }))</pre> | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
