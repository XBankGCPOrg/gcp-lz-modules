terraform {
  required_version = ">= 1.5"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 5.7.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">= 5.7.0"
    }
  }
}

#tfsec:ignore:google-compute-enable-shielded-vm-im
#tfsec:ignore:google-compute-vm-disk-encryption-customer-key
#tfsec:ignore:google-compute-enable-shielded-vm-vtpm
resource "google_compute_instance" "my_vm" {
  #ts:skip=accurics.gcp.NS.125
  #checkov:skip=CKV_GCP_38
  #checkov:skip=CKV_GCP_39  
  project      = var.vm_config.project
  zone         = var.vm_config.zone
  name         = var.vm_config.name
  machine_type = "e2-standard-2"
  metadata = {
    block-project-ssh-keys = true
  }
  service_account {
    email  = var.vm_config.email
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  network_interface {
    network    = var.vm_config.network
    subnetwork = var.vm_config.subnetwork
  }
  tags = ["var.vm_config.tag"]
}

