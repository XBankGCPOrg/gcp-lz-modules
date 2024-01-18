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

provider "google" {
  # credentials = file("path/to/your/credentials.json")  # Path to your service account key JSON file
  # project = "your-project-id"
  # region  = "your-region"
  # zone    = "your-zone"
  impersonate_service_account = var.cluster_config.service_account
}

# tfsec:ignore:google-gke-enforce-pod-security-policy: conflicts wih autopilot
# tfsec:ignore:google-gke-metadata-endpoints-disabled : conflicts with auto pilot GKE setup
# tfsec:ignore:google-gke-enable-network-policy: conflicts wih autopilot
# tfsec:ignore:google-gke-use-service-account: This is done below in auto_provisioning_defaults block
# tfsec:ignore:google-gke-use-cluster-labels: it is present below, prevents error from products repo
resource "google_container_cluster" "gke-cluster" {
  #checkov:skip=CKV_GCP_24: "Ensure PodSecurityPolicy controller is enabled on the Kubernetes Engine Clusters" : conflicts with autopilot
  #checkov:skip=CKV_GCP_18: "Public Control plane must be discussed" : need to be set, to allow GKE cluster access
  #checkov:skip=CKV_GCP_61: "Enable VPC Flow Logs and Intranode Visibility" : conflicts with autopilot
  #checkov:skip=CKV_GCP_12: "Ensure Network Policy is enabled on Kubernetes Engine Clusters" : conflicts with autopilot
  #checkov:skip=CKV_GCP_69: "Ensure the GKE Metadata Server is Enabled" : conflicts with autopilot
  #checkov:skip=CKV_GCP_66: "Ensure use of Binary Authorization" : to be checked if teams are using binary authorization
  #checkov:skip=CKV_GCP_67: "Ensure legacy Compute Engine instance metadata APIs are Disabled": false
  #checkov:skip=CKV_GCP_13: "Ensure a client certificate is used by clients to authenticate to Kubernetes Engine Clusters"
  #checkov:skip=CKV_GCP_71: "Ensure Shielded GKE Nodes are Enabled"
  provider = google-beta

  name               = var.cluster_config.name
  location           = var.cluster_config.location
  initial_node_count = 1
  project            = var.cluster_config.project
  network            = var.cluster_config.network
  subnetwork         = var.cluster_config.subnetwork
  enable_autopilot   = true

  resource_labels = var.cluster_config.resource_labels

  addons_config {
    horizontal_pod_autoscaling {
      disabled = false
    }
  }

  master_auth {
    client_certificate_config {
      issue_client_certificate = false
    }
  }

  authenticator_groups_config {
    security_group = var.cluster_config.security_group
  }

  ip_allocation_policy {
    cluster_secondary_range_name  = var.cluster_config.cluster_secondary_range_name
    services_secondary_range_name = var.cluster_config.services_secondary_range_name
    # cluster_ipv4_cidr_block       = var.cluster_config.cluster_ipv4_cidr
    # services_ipv4_cidr_block      = var.cluster_config.services_ipv4_cidr
  }

  master_authorized_networks_config {
    cidr_blocks {
      cidr_block = var.cluster_config.master_authorized_networks != "" ? var.cluster_config.master_authorized_networks : null
    }
  }

  private_cluster_config {
    enable_private_nodes    = true
    enable_private_endpoint = true
    master_ipv4_cidr_block  = var.cluster_config.master_ipv4_cidr
  }

  # Enable Binary Authorization
  # binary_authorization {
  #   evaluation_mode = "PROJECT_SINGLETON_POLICY_ENFORCE"
  # }

  cluster_autoscaling {
    auto_provisioning_defaults {
      service_account = var.cluster_config.service_account
    }
  }

  release_channel {
    channel = "STABLE"
  }
}