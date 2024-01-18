resource "google_compute_network_peering" "local_network_peering" {
  provider             = google-beta
  name                 = var.vpc_peering_name
  network              = var.local_network
  peer_network         = var.peering_network
  export_custom_routes = var.export_local_custom_routes
  import_custom_routes = var.export_peering_custom_routes

  depends_on = [var.module_depends_on]
}

resource "google_compute_network_peering" "peer_network_peering" {
  provider             = google-beta
  name                 = var.vpc_peering_name
  network              = var.peering_network
  peer_network         = var.local_network
  export_custom_routes = var.export_peering_custom_routes
  import_custom_routes = var.export_local_custom_routes

  depends_on = [var.module_depends_on]
}