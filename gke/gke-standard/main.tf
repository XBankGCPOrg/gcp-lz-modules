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

# TODO: THE OWNER OF THIS CODE NEEDS TO RESOLVE THESE ISSUES ASAP
#tfsec:ignore:google-gke-enforce-pod-security-policy: Pods could be operating with more permissions than required to be effective
#tfsec:ignore:google-gke-enable-private-cluster: Nodes may be exposed to the public internet
#tfsec:ignore:google-gke-enable-network-policy: Unrestricted inter-cluster communication
#tfsec:ignore:google-gke-use-cluster-labels: Asset management can be limited/more difficult
module "private-standard-cluster" {
  #ts:skip=accurics.gcp.NS.109
  source                  = "git::https://github.com/terraform-google-modules/terraform-google-kubernetes-engine.git//modules/private-cluster?ref=v2"
  project_id              = var.cluster_config.project_id
  name                    = var.cluster_config.name
  regional                = true
  region                  = var.cluster_config.region
  network                 = var.cluster_config.network
  subnetwork              = var.cluster_config.subnetwork
  ip_range_pods           = var.cluster_config.ip_range_pods
  ip_range_services       = var.cluster_config.ip_range_services
  create_service_account  = false
  service_account         = var.cluster_config.service_account
  network_project_id      = var.cluster_config.network_project_id
  enable_private_endpoint = true
  enable_private_nodes    = true
  master_ipv4_cidr_block  = var.cluster_config.master_ipv4_cidr
  #  default_max_pods_per_node = 20
  remove_default_node_pool = true

  master_authorized_networks = [
    {
      cidr_block   = var.cluster_config.master_authorized_networks
      display_name = "VPC-Subnet"
    },
  ]

  node_pools = [
    {
      name         = "general"
      machine_type = var.cluster_config.machine_type
      min_count    = 0
      max_count    = 1
      #      local_ssd_count   = 0
      disk_size_gb = 100
      #      disk_type         = "pd-standard"
      auto_repair       = true
      auto_upgrade      = true
      service_account   = var.cluster_config.service_account
      preemptible       = false
      max_pods_per_node = 50
    },
    {
      name         = "spot"
      machine_type = var.cluster_config.machine_type
      min_count    = 0
      max_count    = 1
      #      local_ssd_count   = 0
      disk_size_gb = 100
      #      disk_type         = "pd-standard"
      auto_repair       = true
      auto_upgrade      = true
      service_account   = var.cluster_config.service_account
      preemptible       = true
      max_pods_per_node = 50
    }
  ]

  node_pools_labels = {
    spot = {
      "kind" = "ci"
    }
  }

  node_pools_taints = {
    spot = [
      {
        key    = "gitlab-ci-dedicated"
        value  = "true"
        effect = "NO_SCHEDULE"
      },
    ]
  }
}


