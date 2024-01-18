variable "budget_config" {
  description = "Configuration for setting GCP budget"
  type = object({
    billing_account          = string
    projects                 = list(string)
    create_budget            = bool
    display_name             = string
    credit_types_treatment   = string
    services                 = list(string)
    calendar_period          = string
    custom_period_start_date = string
    custom_period_end_date   = string
    alert_spent_percents     = list(number)
    alert_spend_basis        = string
    # alert_pubsub_topic               = string
    # monitoring_notification_channels = list(string)
    labels                = map(string)
    budget_amount_sandbox = string
    budget_amount_default = string
    currency_code         = string
    project_prefix        = optional(string)
  })
}
