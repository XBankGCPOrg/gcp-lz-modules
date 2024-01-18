


variable "vpc_list" {
  description = "The list of VPCs to be created"
  type = list(object({
    vpcName               = string
    project               = string
    autoCreateSubnetworks = optional(bool)
    routingMode           = optional(string)
  }))
}


# variable "auto_create_subnetworks" {
#   description = "Set to 'true' to automatically create a subnet for each region"
#   type        = bool
#   default     = false
# }

# variable "routing_mode" {
#   type        = string
#   default     = "GLOBAL"
#   description = "The network routing mode. Default is 'GLOBAL'"
# }

#variable "shared_vpc_host" {
#  description = "If set to true it makes this project a host project (default 'false')"
#  type        = bool
#  default     = false
#}