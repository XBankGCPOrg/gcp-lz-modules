output "cpu_metric_id" {
  description = "The ID of the CPU metric descriptor"
  value       = google_monitoring_metric_descriptor.cpu_metric.id
}

output "high_cpu_alert_id" {
  description = "High CPU Utilization Alert"
  value       = google_monitoring_alert_policy.high_cpu_alert.id
}
