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

resource "google_dns_managed_zone" "private_dns_zone" {
  name        = var.dns_zone.name
  dns_name    = var.dns_zone.name
  description = "Private DNS zone for ${var.dns_zone.name}"
  visibility  = "private"
  private_visibility_config {
    networks {
      network_url = "var.dns_zone.network"
    }
  }
}

