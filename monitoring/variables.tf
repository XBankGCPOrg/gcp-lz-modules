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

    monitoring_notification_channels = list(string)
    email_notification_display_name  = string
    email_notification_address       = string
  })
  /*default ={
      project_id                         = "prj-s-my-test-project-85526"
      cpu_metric_display_name            = "New CPU Utilization"
      cpu_metric_description             = "CPU utilization of instances"
      cpu_metric_kind                    = "GAUGE"
      cpu_metric_value_type              = "DOUBLE"
      cpu_metric_unit                    = "1"
      cpu_metric_metric_type             = "custom.googleapis.com/cpu/utilization"

      memory_display_name                = "New Memory Usage"
      memory_description                 = "Memory utilization of instances"
      memory_metric_kind                 = "GAUGE"
      memory_value_type                  = "DOUBLE"
      memory_unit                        = "By"
      memory_type                        = "custom.googleapis.com/memory/usage"

      iops_display_name                  = "IOPS Utilization"
      iops_description                   = "IOPS utilization of instances"
      iops_metric_kind                   = "GAUGE"
      iops_value_type                    = "DOUBLE"
      iops_unit                          = "By"
      iops_type                          = "custom.googleapis.com/iops/utilization"

      api_requests_display_name          = "api-requests"
      api_requests_description           = "API requests made to the service"
      api_requests_metric_kind           = "GAUGE"
      api_requests_value_type            = "DOUBLE"
      api_requests_unit                  = "Count"
      api_requests_type                  = "custom.googleapis.com/api/requests"

      bandwidth_display_name             = "New Bandwidth Usage"
      bandwidth_description              = "Bandwidth utilization of instances"
      bandwidth_metric_metric_kind       = "GAUGE"
      bandwidth_metric_value_type        = "DOUBLE"
      bandwidth_metric_unit              = "Byte/s"
      bandwidth_metric_type              = "custom.googleapis.com/bandwidth/usage"

      memory_alert_display_name          = "New Memory Usage Alert"
      memory_alert_conditions_display_name = "High Memory Usage"
      memory_alert_threshold_value       = 80.0
      memory_alert_duration              = "300s"
      memory_alert_alignment_period      = "60s"
      memory_alert_comparison            = "COMPARISON_GT"
      memory_alert_filter                = "metric.type=\"custom.googleapis.com/memory/usage\" AND resource.type=\"gce_instance\""
      memory_alert_per_series_aligner    = "ALIGN_NONE"
      memory_alert_combiner              = "OR"

      high_cpu_alert_display_name        = "New High CPU Usage Alert"
      high_cpu_alert_conditions_display_name = "High CPU Usage"
      high_cpu_alert_threshold_value     = 80.0
      high_cpu_alert_duration            = "300s"
      high_cpu_alert_alignment_period    = "60s"
      high_cpu_alert_comparison          = "COMPARISON_GT"
      high_cpu_alert_filter              = "metric.type=\"custom.googleapis.com/cpu/utilization\" AND resource.type=\"gce_instance\""
      high_cpu_alert_per_series_aligner  = "ALIGN_NONE"
      high_cpu_alert_combiner            = "OR"

      iops_alert_display_name            = "New IOPS Utilization Alert"
      iops_alert_conditions_display_name = "New High IOPS Usage"
      iops_alert_threshold_value         = 5000.0
      iops_alert_duration                = "300s"
      iops_alert_alignment_period        = "60s"
      iops_alert_comparison              = "COMPARISON_GT"
      iops_alert_filter                  = "metric.type=\"custom.googleapis.com/iops/utilization\" AND resource.type=\"gce_instance\""
      iops_alert_per_series_aligner      = "ALIGN_NONE"
      iops_alert_combiner                = "OR"

      api_requests_alert_display_name    = "API Requests Alert"
      api_requests_alert_conditions_display_name = "High API Requests"
      api_requests_alert_threshold_value = 10000.0
      api_requests_alert_duration        = "300s"
      api_requests_alert_alignment_period = "60s"
      api_requests_alert_comparison      = "COMPARISON_GT"
      api_requests_alert_filter          = "metric.type=\"custom.googleapis.com/api/requests\" AND resource.type=\"gae_instance\""
      api_requests_alert_per_series_aligner = "ALIGN_NONE"
      api_requests_alert_combiner        = "OR"

      bandwidth_alert_display_name       = "New Bandwidth Usage Alert"
      bandwidth_alert_conditions_display_name = "New High Bandwidth Usage"
      bandwidth_alert_threshold_value    = 1000000.0
      bandwidth_alert_duration           = "300s"
      bandwidth_alert_alignment_period   = "60s"
      bandwidth_alert_comparison         = "COMPARISON_GT"
      bandwidth_alert_filter             = "metric.type=\"custom.googleapis.com/bandwidth/usage\" AND resource.type=\"global\""
      bandwidth_alert_per_series_aligner = "ALIGN_NONE"
      bandwidth_alert_combiner           = "OR"

      monitoring_notification_channels   = []
      email_notification_display_name    = "Email Notification"
      email_notification_address         = "your_email@example.com"
    }*/

}
