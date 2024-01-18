variable "project" {
  type        = string
  description = "The project ID to deploy to"
}

variable "router" {
  type        = string
  description = "Name of the router the attachment resides"
}

variable "region" {
  type        = string
  description = "Region where the attachment resides"
}

variable "name" {
  type        = string
  description = "The name of the interconnect attachment"
}

variable "admin_enabled" {
  type        = bool
  description = "Whether the VLAN attachment is enabled or disabled"
  default     = true
}

variable "type" {
  type        = string
  description = "The type of InterconnectAttachment you wish to create"
  default     = "DEDICATED"
}

variable "bandwidth" {
  type        = string
  description = "Provisioned bandwidth capacity for the interconnect attachment"
  default     = null
}

variable "mtu" {
  type        = string
  description = "Maximum Transmission Unit (MTU), in bytes, of packets passing through this interconnect attachment. Currently, only 1440 and 1500 are allowed. If not specified, the value will default to 1440."
  default     = null
}

variable "description" {
  type        = string
  description = "An optional description of this resource"
  default     = null
}

variable "candidate_subnets" {
  type        = list(string)
  description = "Up to 16 candidate prefixes that can be used to restrict the allocation of cloudRouterIpAddress and customerRouterIpAddress for this attachment. All prefixes must be within link-local address space (169.254.0.0/16) and must be /29 or shorter (/28, /27, etc)."
  default     = null
}

variable "vlan_tag8021q" {
  type        = string
  description = "The IEEE 802.1Q VLAN tag for this attachment, in the range 2-4094."
  default     = null
}

variable "interconnect" {
  type        = string
  description = "URL of the underlying Interconnect object that this attachment's traffic will traverse through."
}

variable "edge_availability_domain" {
  type        = string
  description = "The edge availabilty domain is used in Partner Interconnect"
  default     = null
}

variable "encryption" {
  type        = string
  description = "Specified at attachment creation for PARTNER or DEDICATED attachments"
  default     = null
}

variable "ipsec_internal_addresses" {
  type        = list(string)
  description = " Used only for interconnect attachment that has the encryption option as IPSEC"
  default     = []
}