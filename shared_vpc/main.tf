# Enable A Shared VPC in the host project
resource "google_compute_shared_vpc_host_project" "host" {
  project = var.shared_vpc.project # Replace this with your host project ID in quotes
}

# To attach a first service project with host project 
resource "google_compute_shared_vpc_service_project" "service" {
  host_project    = google_compute_shared_vpc_host_project.host.project
  service_project = var.shared_vpc.service_project # Replace this with your service project ID in quotes
}

resource "google_project_iam_member" "shared_subnet" {
  project = var.shared_vpc.project
  role    = "roles/compute.networkUser"
  member  = var.shared_vpc.service_account

  condition {
    title       = "shared_subnets"
    description = "Shared Subnet"
    expression  = "resource.name.startsWith('${var.shared_vpc.subnet}')"
  }
}
