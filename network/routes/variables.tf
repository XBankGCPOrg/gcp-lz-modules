variable "project_id" {
  description = "The Project ID for the VPC"
  type        = string
}

variable "vpc_name" {
  description = "The name of the network"
  type        = string
}

variable "routes" {
  type = map(object({
    name                   = string
    description            = string
    dest_range             = string
    next_hop_gateway       = optional(string)
    next_hop_ip            = optional(string)
    next_hop_instance      = optional(string)
    next_hop_instance_zone = optional(string)
    next_hop_vpn_tunnel    = optional(string)
    next_hop_ilb           = optional(string)
    priority               = optional(string)
  }))
}

variable "module_depends_on" {
  description = "List any resources this module depends on."
  type        = list(any)
  default     = []
}