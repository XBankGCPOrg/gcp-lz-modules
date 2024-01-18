# Configure the shared-vpc network
resource "google_compute_network" "shared_vpc_network" {
  #checkov:skip=CKV2_GCP_18: "Ensure GCP network defines a firewall and does not use the default firewall" adding custom firewalls
  for_each = { for vpc in var.vpc_list : vpc.vpcName => vpc }
  #for_each = var.vpc_list
  project                 = each.value.project
  name                    = each.value.vpcName
  auto_create_subnetworks = lookup(each.value, "autoCreateSubnetworks", false)
  routing_mode            = lookup(each.value, "routingMode", "GLOBAL")
}

# resource "google_compute_network" "shared_vpc_network" {
#   count = length(var.vpc_list)
#   #for_each = var.vpc_list
#   name        = var.vpc_list[count.index].vpcName
#   project     = var.vpc_list[count.index].project
#   auto_create_subnetworks = var.vpc_list[count.index].autoCreateSubnetworks
#   routing_mode = var.vpc_list[count.index].routingMode
# }



#TODO: Why is this created?
# # Set up the host project to provide network connectivity to service projects.
# resource "google_compute_shared_vpc_host_project" "host_proj" {
#   # Only create host project if shared_vpc_host is set to true
#   count      = var.shared_vpc_host ? 1 : 0
#   project    = var.project
#   depends_on = [google_compute_network.shared_vpc_network]
# }