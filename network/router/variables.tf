variable "name" {
  type        = string
  description = "Name of the router"
}

variable "network" {
  type        = string
  description = "A reference to the network to which this router belongs"
}

variable "project" {
  type        = string
  description = "The project ID to deploy to"
}

variable "region" {
  type        = string
  description = "Region where the router resides"
}

variable "description" {
  type        = string
  description = "An optional description of this resource"
  default     = null
}

variable "bgp" {
  description = "BGP information specific to this router."
  type = object({
    asn               = string
    advertise_mode    = optional(string, "CUSTOM")
    advertised_groups = optional(list(string))
    advertised_ip_ranges = optional(list(object({
      range       = string
      description = optional(string)
    })), [])
    keepalive_interval = optional(number)
  })
  default = null
}