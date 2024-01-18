# budget

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 5.7.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | >= 5.7.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_billing_budget.budget](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/billing_budget) | resource |
| [google_project.project](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/project) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_budget_config"></a> [budget\_config](#input\_budget\_config) | Configuration for setting GCP budget | <pre>object({<br>    billing_account          = string<br>    projects                 = list(string)<br>    create_budget            = bool<br>    display_name             = string<br>    credit_types_treatment   = string<br>    services                 = list(string)<br>    calendar_period          = string<br>    custom_period_start_date = string<br>    custom_period_end_date   = string<br>    alert_spent_percents     = list(number)<br>    alert_spend_basis        = string<br>    # alert_pubsub_topic               = string<br>    # monitoring_notification_channels = list(string)<br>    labels                = map(string)<br>    budget_amount_sandbox = string<br>    budget_amount_default = string<br>    currency_code         = string<br>    project_prefix        = optional(string)<br>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_budget_projects_value"></a> [budget\_projects\_value](#output\_budget\_projects\_value) | n/a |
| <a name="output_name"></a> [name](#output\_name) | Resource name of the budget. Values are of the form `billingAccounts/{billingAccountId}/budgets/{budgetId}.` |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
