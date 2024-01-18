resource "google_compute_subnetwork" "subnets" {
  #checkov:skip=CKV_GCP_74: "Ensure that private_ip_google_access is enabled for Subnet"
  for_each      = { for subnet in var.subnets : subnet.subnetName => subnet }
  name          = each.value.subnetName
  ip_cidr_range = each.value.subnetIPRange
  region        = each.value.subnetRegion
  description   = lookup(each.value, "description", null)
  #checkov:skip=CKV_GCP_76:Private google access is set to optional
  private_ip_google_access = lookup(each.value, "privateGoogleAccess", false)
  purpose                  = lookup(each.value, "purpose", null)
  network                  = each.value.vpcName
  project                  = each.value.project

  dynamic "secondary_ip_range" {
    for_each = can(totuple(each.value.secondarySubnets)) ? toset(each.value.secondarySubnets) : []
    content {
      range_name    = each.value.secondarySubnets[secondary_ip_range.key].secondaryIPRangeName
      ip_cidr_range = each.value.secondarySubnets[secondary_ip_range.key].secondaryIPCIDRRange
    }
  }

  dynamic "log_config" {

    for_each = lookup(each.value, "logConfig", {}) != {} ? ["1"] : []
    content {
      aggregation_interval = try(each.value.aggregationInterval, "INTERVAL_10_MIN")
      flow_sampling        = try(each.value.flowSampling, 1.0)
      metadata             = try(each.value.metadata, "INCLUDE_ALL_METADATA")
    }
  }

  # depends_on = [var.module_depends_on]
}