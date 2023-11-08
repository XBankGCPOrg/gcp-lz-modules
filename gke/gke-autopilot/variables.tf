variable "name" {
  description = "The name of gke cluster"
  type        = string
}

variable "location" {
  description = "The location of gke cluster"
  type        = string
}
variable "network" {
  description = "The VPC for gke cluster"
  type        = string
}

variable "subnetwork" {
  description = "The subnetwork for gke cluster"
  type        = string
}

variable "cluster_ipv4_cidr" {
  description = "Cluster IPV4 cidr range"

}

variable "services_ipv4_cidr" {
  description = "Services Ipv4 cidr range"


}

variable "project" {

}

variable "master_ipv4_cidr" {
  description = "Gke master ipv4 cidr range"
  type        = string


}
variable "master_authorized_networks" {
  type        = string
  description = "IP CIDR Block to whitelist for GKE Cluster setup"
  default     = ""
}
variable "create_service_account" {
  type        = bool
  description = "Defines if service account specified to run nodes should be created."
  default     = true
}
variable "service_account" {
  type        = string
  description = "The service account to run nodes as if not overridden in `node_pools`. The create_service_account variable default value (true) will cause a cluster-specific service account to be created. This service account should already exists and it will be used by the node pools. If you wish to only override the service account name, you can use service_account_name variable."
  default     = ""
}