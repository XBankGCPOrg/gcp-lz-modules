resource "google_service_networking_connection" "default" {
  network                 = "projects/${var.project_id}/global/networks/${var.network}"
  service                 = "servicenetworking.googleapis.com"
  reserved_peering_ranges = var.reserved_peering_ranges
}


resource "google_compute_network_peering_routes_config" "peering_routes" {
  peering              = google_service_networking_connection.default.peering
  network              = var.network
  project              = var.project_id
  import_custom_routes = var.import_custom_routes
  export_custom_routes = var.export_custom_routes
}