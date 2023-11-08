resource "google_container_cluster" "gke-cluster" {
  name                = var.name
  location            = var.location
  project             = var.project
  network             = var.network
  subnetwork          = var.subnetwork
  enable_autopilot    = true
  deletion_protection = false
  addons_config {
    horizontal_pod_autoscaling {
      disabled = false
    }
  }


  ip_allocation_policy {

    cluster_ipv4_cidr_block  = var.cluster_ipv4_cidr
    services_ipv4_cidr_block = var.services_ipv4_cidr


  }

  master_authorized_networks_config {
    cidr_blocks {
      cidr_block = var.master_authorized_networks

    }

  }

  private_cluster_config {
    enable_private_nodes    = true
    enable_private_endpoint = true
    master_ipv4_cidr_block  = var.master_ipv4_cidr
  }
  cluster_autoscaling {
    dynamic "auto_provisioning_defaults" {
      for_each = (var.create_service_account || var.service_account != "") ? [1] : []

      content {
        service_account = var.service_account
      }
    }
  }

  release_channel {

    channel = "STABLE"
  }
}