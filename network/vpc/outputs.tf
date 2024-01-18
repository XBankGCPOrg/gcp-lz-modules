# output "vpc_network" {
#   value       = google_compute_network.shared_vpc_network[each.key]
#   description = "Shared VPC resource"
# }

output "vpc_self_links" {
  value = { for vpc in var.vpc_list : vpc.vpcName => google_compute_network.shared_vpc_network[vpc.vpcName].self_link }
}

# output "vpc_name" {
#   value       = google_compute_network.shared_vpc_network.name[each.key]
#   description = "The Shared VPC being created"
# }

# output "network_id" {
#   value       = google_compute_network.shared_vpc_network.id[each.key]
#   description = "The Shared VPC ID"
# }