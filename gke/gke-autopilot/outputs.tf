# outputs.tf

output "gke_cluster_name" {
  value = google_container_cluster.gke-cluster.name
}

output "gke_cluster_location" {
  value = google_container_cluster.gke-cluster.location
}

output "gke_cluster_endpoint" {
  value = google_container_cluster.gke-cluster.endpoint
}

output "gke_cluster_master_ipv4_cidr" {
  value = google_container_cluster.gke-cluster.private_cluster_config[0].master_ipv4_cidr_block
}

output "gke_cluster_node_pool_sizes" {
  value = {
    default_pool = google_container_cluster.gke-cluster.node_pool[0].initial_node_count
  }
}
