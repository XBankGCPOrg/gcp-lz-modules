resource "google_compute_interconnect_attachment" "attachment" {
  name                     = var.name
  router                   = var.router
  project                  = var.project
  region                   = var.region
  interconnect             = var.interconnect
  admin_enabled            = var.admin_enabled
  type                     = var.type
  description              = var.description
  bandwidth                = var.bandwidth
  mtu                      = var.mtu
  candidate_subnets        = var.candidate_subnets
  vlan_tag8021q            = var.vlan_tag8021q
  edge_availability_domain = var.edge_availability_domain
  encryption               = var.encryption
  ipsec_internal_addresses = var.ipsec_internal_addresses
}