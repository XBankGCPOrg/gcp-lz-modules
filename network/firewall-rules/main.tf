resource "google_compute_firewall" "firewall-rules" {
  name                    = var.name
  description             = var.description
  direction               = var.direction
  disabled                = var.disabled
  network                 = var.network_name
  project                 = var.project_id
  source_ranges           = var.source_ranges
  destination_ranges      = var.destination_ranges
  source_tags             = var.source_tags
  source_service_accounts = var.source_service_accounts
  target_tags             = var.target_tags
  target_service_accounts = var.target_service_accounts
  priority                = var.priority

  dynamic "log_config" {
    for_each = var.log_config == null ? [] : [var.log_config]
    content {
      metadata = log_config.value.metadata
    }
  }

  dynamic "allow" {
    for_each = var.allow
    content {
      protocol = allow.value.protocol
      ports    = lookup(allow.value, "ports", null)
    }
  }

  dynamic "deny" {
    for_each = var.deny
    content {
      protocol = deny.value.protocol
      ports    = lookup(deny.value, "ports", null)
    }
  }
}