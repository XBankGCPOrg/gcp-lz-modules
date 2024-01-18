# monitoring

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
| [google_monitoring_alert_policy.api_requests_alert](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy) | resource |
| [google_monitoring_alert_policy.bandwidth_alert](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy) | resource |
| [google_monitoring_alert_policy.high_cpu_alert](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy) | resource |
| [google_monitoring_alert_policy.iops_alert](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy) | resource |
| [google_monitoring_alert_policy.memory_alert](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy) | resource |
| [google_monitoring_metric_descriptor.api_requests_metric](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_metric_descriptor) | resource |
| [google_monitoring_metric_descriptor.bandwidth_metric](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_metric_descriptor) | resource |
| [google_monitoring_metric_descriptor.cpu_metric](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_metric_descriptor) | resource |
| [google_monitoring_metric_descriptor.iops_metric](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_metric_descriptor) | resource |
| [google_monitoring_metric_descriptor.memory_metric](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_metric_descriptor) | resource |
| [google_monitoring_notification_channel.email](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_notification_channel) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_monitoring_config"></a> [monitoring\_config](#input\_monitoring\_config) | Configuration for monitoring metrics and alerts | <pre>object({<br>    project_id              = string<br>    cpu_metric_display_name = string<br>    cpu_metric_description  = string<br>    cpu_metric_kind         = string<br>    cpu_metric_value_type   = string<br>    cpu_metric_unit         = string<br>    cpu_metric_metric_type  = string<br><br>    memory_display_name = string<br>    memory_description  = string<br>    memory_metric_kind  = string<br>    memory_value_type   = string<br>    memory_unit         = string<br>    memory_type         = string<br><br>    iops_display_name = string<br>    iops_description  = string<br>    iops_metric_kind  = string<br>    iops_value_type   = string<br>    iops_unit         = string<br>    iops_type         = string<br><br>    api_requests_display_name = string<br>    api_requests_description  = string<br>    api_requests_metric_kind  = string<br>    api_requests_value_type   = string<br>    api_requests_unit         = string<br>    api_requests_type         = string<br><br>    bandwidth_display_name       = string<br>    bandwidth_description        = string<br>    bandwidth_metric_metric_kind = string<br>    bandwidth_metric_value_type  = string<br>    bandwidth_metric_unit        = string<br>    bandwidth_metric_type        = string<br><br>    memory_alert_display_name            = string<br>    memory_alert_conditions_display_name = string<br>    memory_alert_threshold_value         = number<br>    memory_alert_duration                = string<br>    memory_alert_alignment_period        = string<br>    memory_alert_comparison              = string<br>    memory_alert_filter                  = string<br>    memory_alert_per_series_aligner      = string<br>    memory_alert_combiner                = string<br><br>    high_cpu_alert_display_name            = string<br>    high_cpu_alert_conditions_display_name = string<br>    high_cpu_alert_threshold_value         = number<br>    high_cpu_alert_duration                = string<br>    high_cpu_alert_alignment_period        = string<br>    high_cpu_alert_comparison              = string<br>    high_cpu_alert_filter                  = string<br>    high_cpu_alert_per_series_aligner      = string<br>    high_cpu_alert_combiner                = string<br><br>    iops_alert_display_name            = string<br>    iops_alert_conditions_display_name = string<br>    iops_alert_threshold_value         = number<br>    iops_alert_duration                = string<br>    iops_alert_alignment_period        = string<br>    iops_alert_comparison              = string<br>    iops_alert_filter                  = string<br>    iops_alert_per_series_aligner      = string<br>    iops_alert_combiner                = string<br><br>    api_requests_alert_display_name            = string<br>    api_requests_alert_conditions_display_name = string<br>    api_requests_alert_threshold_value         = number<br>    api_requests_alert_duration                = string<br>    api_requests_alert_alignment_period        = string<br>    api_requests_alert_comparison              = string<br>    api_requests_alert_filter                  = string<br>    api_requests_alert_per_series_aligner      = string<br>    api_requests_alert_combiner                = string<br><br>    bandwidth_alert_display_name            = string<br>    bandwidth_alert_conditions_display_name = string<br>    bandwidth_alert_threshold_value         = number<br>    bandwidth_alert_duration                = string<br>    bandwidth_alert_alignment_period        = string<br>    bandwidth_alert_comparison              = string<br>    bandwidth_alert_filter                  = string<br>    bandwidth_alert_per_series_aligner      = string<br>    bandwidth_alert_combiner                = string<br><br>    # monitoring_notification_channels = list(string)<br>    email_notification_display_name = string<br>    email_notification_address      = string<br>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cpu_metric_id"></a> [cpu\_metric\_id](#output\_cpu\_metric\_id) | The ID of the CPU metric descriptor |
| <a name="output_high_cpu_alert_id"></a> [high\_cpu\_alert\_id](#output\_high\_cpu\_alert\_id) | High CPU Utilization Alert |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
