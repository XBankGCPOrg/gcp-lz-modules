variable "project_id" {
  type        = string
  description = "The project ID to create the address in"
}

variable "region" {
  type        = string
  description = "The region to create the address in"
  default     = null
}

variable "name" {
  description = "IP address resource names to create.  This is the GCP resource name and not the associated hostname of the IP address.  Existing resource names may be found with `gcloud compute addresses list` (e.g. [\"gusw1-dev-fooapp-fe-0001-a-001-ip\"])"
  type        = string
}

variable "address" {
  description = "IP addresses to create.  GCP will reserve unreserved addresses if given the value \"\".  If multiple names are given the default value is sufficient to have multiple addresses automatically picked for each name."
  type        = string
  default     = ""
}

variable "global" {
  description = "The scope in which the address should live. If set to true, the IP address will be globally scoped. Defaults to false, i.e. regionally scoped. When set to true, do not provide a subnetwork."
  type        = bool
  default     = false
}

variable "subnetwork" {
  type        = string
  description = "The subnet containing the address.  For EXTERNAL addresses use the empty string, \"\".  (e.g. \"projects/<project-name>/regions/<region-name>/subnetworks/<subnetwork-name>\")"
  default     = null
}

variable "address_type" {
  type        = string
  description = "The type of address to reserve, either \"INTERNAL\" or \"EXTERNAL\". If unspecified, defaults to \"INTERNAL\"."
  default     = "INTERNAL"
}

variable "purpose" {
  type        = string
  description = "The purpose of the resource(GCE_ENDPOINT, SHARED_LOADBALANCER_VIP, VPC_PEERING)."
  default     = "GCE_ENDPOINT"
}

variable "network_tier" {
  type        = string
  description = "The networking tier used for configuring this address."
  default     = "PREMIUM"
}

variable "prefix_length" {
  type        = number
  description = "The prefix length of the IP range."
  default     = null
}

variable "ip_version" {
  type        = string
  description = "The IP Version that will be used by this address."
  default     = "IPV4"
}

variable "network" {
  type        = string
  description = "Network name"
  default     = null
}