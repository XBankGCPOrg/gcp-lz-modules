variable "monitoring_config" {
  description = "Configuration for monitoring metrics and alerts"
  type = object({
    project_id              = string
    cpu_metric_display_name = string
    cpu_metric_description  = string
    cpu_metric_kind         = string
    cpu_metric_value_type   = string
    cpu_metric_unit         = string
    cpu_metric_metric_type  = string

    memory_display_name = string
    memory_description  = string
    memory_metric_kind  = string
    memory_value_type   = string
    memory_unit         = string
    memory_type         = string

    iops_display_name = string
    iops_description  = string
    iops_metric_kind  = string
    iops_value_type   = string
    iops_unit         = string
    iops_type         = string

    api_requests_display_name = string
    api_requests_description  = string
    api_requests_metric_kind  = string
    api_requests_value_type   = string
    api_requests_unit         = string
    api_requests_type         = string

    bandwidth_display_name       = string
    bandwidth_description        = string
    bandwidth_metric_metric_kind = string
    bandwidth_metric_value_type  = string
    bandwidth_metric_unit        = string
    bandwidth_metric_type        = string

    memory_alert_display_name            = string
    memory_alert_conditions_display_name = string
    memory_alert_threshold_value         = number
    memory_alert_duration                = string
    memory_alert_alignment_period        = string
    memory_alert_comparison              = string
    memory_alert_filter                  = string
    memory_alert_per_series_aligner      = string
    memory_alert_combiner                = string

    high_cpu_alert_display_name            = string
    high_cpu_alert_conditions_display_name = string
    high_cpu_alert_threshold_value         = number
    high_cpu_alert_duration                = string
    high_cpu_alert_alignment_period        = string
    high_cpu_alert_comparison              = string
    high_cpu_alert_filter                  = string
    high_cpu_alert_per_series_aligner      = string
    high_cpu_alert_combiner                = string

    iops_alert_display_name            = string
    iops_alert_conditions_display_name = string
    iops_alert_threshold_value         = number
    iops_alert_duration                = string
    iops_alert_alignment_period        = string
    iops_alert_comparison              = string
    iops_alert_filter                  = string
    iops_alert_per_series_aligner      = string
    iops_alert_combiner                = string

    api_requests_alert_display_name            = string
    api_requests_alert_conditions_display_name = string
    api_requests_alert_threshold_value         = number
    api_requests_alert_duration                = string
    api_requests_alert_alignment_period        = string
    api_requests_alert_comparison              = string
    api_requests_alert_filter                  = string
    api_requests_alert_per_series_aligner      = string
    api_requests_alert_combiner                = string

    bandwidth_alert_display_name            = string
    bandwidth_alert_conditions_display_name = string
    bandwidth_alert_threshold_value         = number
    bandwidth_alert_duration                = string
    bandwidth_alert_alignment_period        = string
    bandwidth_alert_comparison              = string
    bandwidth_alert_filter                  = string
    bandwidth_alert_per_series_aligner      = string
    bandwidth_alert_combiner                = string

    # monitoring_notification_channels = list(string)
    email_notification_display_name = string
    email_notification_address      = string
  })
}
