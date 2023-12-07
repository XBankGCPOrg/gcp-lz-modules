# Enable A Shared VPC in the host project
resource "google_compute_shared_vpc_host_project" "host" {
  project = var.project_vending.project # Replace this with your host project ID in quotes
}

# To attach a first service project with host project 
resource "google_compute_shared_vpc_service_project" "service" {
  host_project    = google_compute_shared_vpc_host_project.host.project
  service_project = var.project_vending.service_project # Replace this with your service project ID in quotes
}
