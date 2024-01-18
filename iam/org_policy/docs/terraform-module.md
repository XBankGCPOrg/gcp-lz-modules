# org_policy

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
| [google_org_policy_policy.policy](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/org_policy_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_parent"></a> [parent](#input\_parent) | The parent of the policies | `string` | n/a | yes |
| <a name="input_policies"></a> [policies](#input\_policies) | A list of policies | <pre>list(object({<br>    policy = object({<br>      name = string<br>      spec = object({<br>        inheritFromParent = optional(bool)<br>        exists            = optional(bool)<br>        rules = list(object({<br>          enforce  = optional(bool)<br>          allowAll = optional(bool)<br>          denyAll  = optional(bool)<br>          values = optional(object({<br>            allowedValues = optional(list(string), null)<br>            deniedValues  = optional(list(string), null)<br>          }), null)<br>        }))<br>      })<br>    })<br>  }))</pre> | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
