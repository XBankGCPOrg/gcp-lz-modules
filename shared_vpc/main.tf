terraform {
  required_version = ">= 1.5"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 5.7.0"
    }
  }
}

resource "google_compute_shared_vpc_host_project" "host" {
  project = var.shared_vpc.project #Host project ID
}

resource "google_compute_shared_vpc_service_project" "service" {
  host_project    = google_compute_shared_vpc_host_project.host.project
  service_project = var.shared_vpc.service_project #Service Project ID
}

resource "google_project_iam_member" "shared_subnet" {
  project = var.shared_vpc.project
  role    = "roles/compute.networkUser"
  member  = var.shared_vpc.service_account

  condition {
    title       = "shared_subnet"
    description = "Subet Shared"
    expression  = "resource.name.startWith('${var.shared_vpc.subnet}')"
  }
}