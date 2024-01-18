# repo-creation

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_github"></a> [github](#requirement\_github) | 5.42.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | 5.42.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_branch.default](https://registry.terraform.io/providers/integrations/github/5.42.0/docs/resources/branch) | resource |
| [github_branch_default.default](https://registry.terraform.io/providers/integrations/github/5.42.0/docs/resources/branch_default) | resource |
| [github_repository.default](https://registry.terraform.io/providers/integrations/github/5.42.0/docs/resources/repository) | resource |
| [github_repository_collaborator.default](https://registry.terraform.io/providers/integrations/github/5.42.0/docs/resources/repository_collaborator) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_github_username"></a> [github\_username](#input\_github\_username) | GitHub username for the collaborator | `any` | n/a | yes |
| <a name="input_repositories"></a> [repositories](#input\_repositories) | (Optional) - This input variable contains GitHub repositories attributes | <pre>map(object({<br>    description                             = optional(string)<br>    visibility                              = optional(string)<br>    homepage_url                            = optional(string)<br>    has_projects                            = optional(bool)<br>    has_issues                              = optional(bool)<br>    has_wiki                                = optional(bool)<br>    is_template                             = optional(bool)<br>    allow_merge_commit                      = optional(bool)<br>    allow_squash_merge                      = optional(bool)<br>    allow_rebase_merge                      = optional(bool)<br>    allow_auto_merge                        = optional(bool)<br>    delete_branch_on_merge                  = optional(bool)<br>    has_downloads                           = optional(bool)<br>    gitignore_template                      = optional(string)<br>    license_template                        = optional(string)<br>    archived                                = optional(bool)<br>    archived_on_destroy                     = optional(bool)<br>    topics                                  = optional(list(string))<br>    vulnerability_alert                     = optional(bool)<br>    ignore_vulnerability_alerts_during_read = optional(bool)<br>    team                                    = string<br>    default_branch                          = optional(string)<br>    auto_init                               = optional(bool)<br>    permission                              = optional(string)<br>    # pages = optional(set(object({<br>    #   cname = optional(string)<br>    #   source = optional(set(object({<br>    #     branch = optional(string)<br>    #     path   = optional(string)<br>    #   })))<br>    # })))<br>    # template = optional(set(object({<br>    #   owner      = optional(string)<br>    #   repository = optional(string)<br>    # })))<br><br>    # environments = optional(map(object({<br>    #   wait_timer = string<br>    #   reviewers  = optional(set(object({<br>    #     users = optional(list(string))<br>    #     teams = optional(list(string))<br>    #   })))<br>    #   deployment_branch_policy = optional(set(object({<br>    #     protected_branches     = optional(bool)<br>    #     custom_branch_policies = optional(bool)<br>    #   })))<br>    # })))<br><br>    # labels = optional(map(object({<br>    #   color       = string<br>    #   description = string<br>    #   url         = optional(string)<br>    # })))<br>  }))</pre> | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_repo_names"></a> [repo\_names](#output\_repo\_names) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
