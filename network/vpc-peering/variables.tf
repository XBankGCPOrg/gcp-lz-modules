#variable "vpc_name" {
#  description = "The name of the network"
#  type        = string
#}

variable "vpc_peering_name" {
  description = "The environment ID"
  type        = string
}

variable "local_network" {
  description = "Link of the local network for VPC peering"
  type        = string
}

variable "peering_network" {
  description = "Link of the peering network for VPC peering"
  type        = string
}

variable "export_local_custom_routes" {
  description = "Export custom routes from local to peering network"
  type        = bool
  default     = false
}

variable "export_peering_custom_routes" {
  description = "Export custom routes from peering to local network"
  type        = bool
  default     = false
}

variable "module_depends_on" {
  description = "List any resources this module depends on."
  type        = list(any)
  default     = []
}