terraform {
  required_version = ">= 1.5"


  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 5.7.0"
    }
  }
}

//Define metric descriptors for different metrics

// Define a metric to monitor CPU utilization
resource "google_monitoring_metric_descriptor" "cpu_metric" {
  display_name = var.monitoring_config.cpu_metric_display_name
  description  = var.monitoring_config.cpu_metric_description
  project      = var.monitoring_config.project_id
  metric_kind  = var.monitoring_config.cpu_metric_kind
  value_type   = var.monitoring_config.cpu_metric_value_type
  unit         = var.monitoring_config.cpu_metric_unit
  type         = var.monitoring_config.cpu_metric_metric_type
}


resource "google_monitoring_metric_descriptor" "memory_metric" {
  display_name = var.monitoring_config.memory_display_name
  description  = var.monitoring_config.memory_description
  project      = var.monitoring_config.project_id
  metric_kind  = var.monitoring_config.memory_metric_kind
  value_type   = var.monitoring_config.memory_value_type
  unit         = var.monitoring_config.memory_unit
  type         = var.monitoring_config.memory_type
}

resource "google_monitoring_metric_descriptor" "iops_metric" {
  display_name = var.monitoring_config.iops_display_name
  description  = var.monitoring_config.iops_description
  project      = var.monitoring_config.project_id
  metric_kind  = var.monitoring_config.iops_metric_kind
  value_type   = var.monitoring_config.iops_value_type
  unit         = var.monitoring_config.iops_unit
  type         = var.monitoring_config.iops_type
}

resource "google_monitoring_metric_descriptor" "api_requests_metric" {
  display_name = var.monitoring_config.api_requests_display_name
  description  = var.monitoring_config.api_requests_description
  project      = var.monitoring_config.project_id
  metric_kind  = var.monitoring_config.api_requests_metric_kind
  value_type   = var.monitoring_config.api_requests_value_type
  unit         = var.monitoring_config.api_requests_unit
  type         = var.monitoring_config.api_requests_type
}

resource "google_monitoring_metric_descriptor" "bandwidth_metric" {
  display_name = var.monitoring_config.bandwidth_display_name
  description  = var.monitoring_config.bandwidth_description
  project      = var.monitoring_config.project_id
  metric_kind  = var.monitoring_config.bandwidth_metric_metric_kind
  value_type   = var.monitoring_config.bandwidth_metric_value_type
  unit         = var.monitoring_config.bandwidth_metric_unit
  type         = var.monitoring_config.bandwidth_metric_type
}

// Alert Policies below  for all metrices set above

// Set up an alert policy for high CPU utilization
resource "google_monitoring_alert_policy" "high_cpu_alert" {
  project      = var.monitoring_config.project_id # Ensure var.project_id is correctly set   
  display_name = var.monitoring_config.high_cpu_alert_display_name
  combiner     = var.monitoring_config.high_cpu_alert_combiner

  conditions {
    display_name = var.monitoring_config.high_cpu_alert_conditions_display_name
    condition_threshold {
      filter          = var.monitoring_config.high_cpu_alert_filter
      comparison      = var.monitoring_config.high_cpu_alert_comparison
      threshold_value = var.monitoring_config.high_cpu_alert_threshold_value // Threshold for triggering the alert
      duration        = var.monitoring_config.high_cpu_alert_duration        // Duration for which the condition must hold true

      /*These settings for aggregations block below influences how data is processed
        before evaluating the condition set for the alert policy.

        Here's an explanation for these parameters:

        Alignment Period: This parameter defines the window size for which data points are
        aggregated before comparison. It specifies the duration over which time series data 
        points are grouped together for evaluation.
        For instance, if alignment_period is set to 1 minute, the monitoring system aggregates 
        data points for every minute before making comparisons based on the condition set.

        Per-Series Aligner: This parameter specifies the alignment method for individual time series
        within the alignment period. Different aligners provide different methods for 
        aggregating and aligning data points, such as averaging, counting, 
        taking the maximum or minimum value, etc. 
        For example, per_series_aligner = "ALIGN_RATE" might calculate the rate of change 
        for a metric over the specified alignment period which has been set as the default,
        if no value is set for this parameter
        */

      aggregations {
        alignment_period   = var.monitoring_config.high_cpu_alert_alignment_period
        per_series_aligner = var.monitoring_config.high_cpu_alert_per_series_aligner
      }
    }
  }


  notification_channels = [ google_monitoring_notification_channel.email.id ]
}

// Set up an alert policy for memory utilization
resource "google_monitoring_alert_policy" "memory_alert" {
  project      = var.monitoring_config.project_id # Ensure var.project_id is correctly set   
  display_name = var.monitoring_config.memory_alert_display_name
  combiner     = var.monitoring_config.memory_alert_combiner

  conditions {
    display_name = var.monitoring_config.memory_alert_conditions_display_name
    condition_threshold {
      filter          = var.monitoring_config.memory_alert_filter
      comparison      = var.monitoring_config.memory_alert_comparison
      threshold_value = var.monitoring_config.memory_alert_threshold_value // Example threshold for memory usage
      duration        = var.monitoring_config.memory_alert_duration        // Example duration for which the condition must hold true
      aggregations {
        alignment_period   = var.monitoring_config.memory_alert_alignment_period
        per_series_aligner = var.monitoring_config.memory_alert_per_series_aligner
      }
    }
  }


  notification_channels =  [ google_monitoring_notification_channel.email.id ]
}


// Set up an alert policy for IOPS
resource "google_monitoring_alert_policy" "iops_alert" {
  project      = var.monitoring_config.project_id # Ensure var.project_id is correctly set   
  display_name = var.monitoring_config.iops_alert_display_name
  combiner     = var.monitoring_config.iops_alert_combiner

  conditions {
    display_name = var.monitoring_config.iops_alert_conditions_display_name
    condition_threshold {
      filter          = var.monitoring_config.iops_alert_filter
      comparison      = var.monitoring_config.iops_alert_comparison
      threshold_value = var.monitoring_config.iops_alert_threshold_value // Example threshold for IOPS
      duration        = var.monitoring_config.iops_alert_duration        // Example duration for which the condition must hold true
      aggregations {
        alignment_period   = var.monitoring_config.iops_alert_alignment_period
        per_series_aligner = var.monitoring_config.iops_alert_per_series_aligner
      }
    }
  }


  notification_channels = [ google_monitoring_notification_channel.email.id ]
}

// Set up an alert policy for API Requests
resource "google_monitoring_alert_policy" "api_requests_alert" {
  project      = var.monitoring_config.project_id # Ensure var.project_id is correctly set   
  display_name = var.monitoring_config.api_requests_alert_display_name
  combiner     = var.monitoring_config.api_requests_alert_combiner

  conditions {
    display_name = var.monitoring_config.api_requests_alert_conditions_display_name
    condition_threshold {
      filter          = var.monitoring_config.api_requests_alert_filter
      comparison      = var.monitoring_config.api_requests_alert_comparison
      threshold_value = var.monitoring_config.api_requests_alert_threshold_value // Example threshold for API requests
      duration        = var.monitoring_config.api_requests_alert_duration        // Example duration for which the condition must hold true
      aggregations {
        alignment_period   = var.monitoring_config.api_requests_alert_alignment_period
        per_series_aligner = var.monitoring_config.api_requests_alert_per_series_aligner
      }
    }
  }


  notification_channels =  [ google_monitoring_notification_channel.email.id ]
}

// Set up an alert policy for bandwidth
resource "google_monitoring_alert_policy" "bandwidth_alert" {
  project      = var.monitoring_config.project_id # Ensure var.project_id is correctly set   
  display_name = var.monitoring_config.bandwidth_alert_display_name
  combiner     = var.monitoring_config.bandwidth_alert_combiner

  conditions {
    display_name = var.monitoring_config.bandwidth_alert_conditions_display_name
    condition_threshold {
      filter          = var.monitoring_config.bandwidth_alert_filter
      comparison      = var.monitoring_config.bandwidth_alert_comparison
      threshold_value = var.monitoring_config.bandwidth_alert_threshold_value // Example threshold for bandwidth usage in Byte/s
      duration        = var.monitoring_config.bandwidth_alert_duration        // Example duration for which the condition must hold true
      aggregations {
        alignment_period   = var.monitoring_config.bandwidth_alert_alignment_period
        per_series_aligner = var.monitoring_config.bandwidth_alert_per_series_aligner
      }
    }
  }


  notification_channels =  [ google_monitoring_notification_channel.email.id ]
}

resource "google_monitoring_notification_channel" "email" {
  project      = var.monitoring_config.project_id # Ensure var.project_id is correctly set  
  display_name = var.monitoring_config.email_notification_display_name
  type         = "email"
  labels = {
    email_address = var.monitoring_config.email_notification_address
  }
}
