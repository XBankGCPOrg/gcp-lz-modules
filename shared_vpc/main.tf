terraform {
  required_version = ">= 1.5"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 5.7.0"
    }
  }
}
# Enable A Shared VPC in the host project
resource "google_compute_shared_vpc_host_project" "host" {
  project = var.shared_vpc.host_project
}

# To attach a first service project with host project 
resource "google_compute_shared_vpc_service_project" "service" {
  host_project    = google_compute_shared_vpc_host_project.host.project
  service_project = var.shared_vpc.service_project
}

# Create IAM bindings for each subnet
resource "google_project_iam_member" "shared_subnet" {
  for_each = toset(var.shared_vpc.subnet)

  project = var.shared_vpc.host_project
  role    = "roles/compute.networkUser"
  member  = var.shared_vpc.service_account

  condition {
    title       = "shared_subnets"
    description = "Shared Subnet"
    expression  = "resource.name.startsWith('${each.key}')"
  }
}