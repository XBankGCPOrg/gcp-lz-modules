resource "google_compute_route" "route" {
  for_each    = var.routes
  name        = each.key
  description = lookup(each.value, "description", null)

  dest_range             = lookup(each.value, "dest_range", null)
  next_hop_gateway       = lookup(each.value, "next_hop_internet", "false") == "true" ? "default-internet-gateway" : null
  next_hop_ip            = lookup(each.value, "next_hop_ip", null)
  next_hop_instance      = lookup(each.value, "next_hop_instance", null)
  next_hop_instance_zone = lookup(each.value, "next_hop_instance_zone", null)
  next_hop_vpn_tunnel    = lookup(each.value, "next_hop_vpn_tunnel", null)
  next_hop_ilb           = lookup(each.value, "next_hop_ilb", null)
  priority               = lookup(each.value, "priority", null)

  project = var.project_id
  network = var.vpc_name

  depends_on = [var.module_depends_on]
}