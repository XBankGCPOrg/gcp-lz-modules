

variable "subnets" {
  type = list(object({
    subnetName          = string
    vpcName             = string
    project             = string
    subnetIPRange       = string
    subnetRegion        = string
    description         = string
    privateGoogleAccess = bool
    purpose             = optional(string)
    secondarySubnets = optional(list(object({
      secondaryIPRangeName = optional(string)
      secondaryIPCIDRRange = optional(string)
    })))
    logConfig = optional(object({
      aggregationInterval = optional(string)
      flowSampling        = optional(number)
      metadata            = optional(string)
    }))
  }))
}


# variable "aggregation_interval" {
#   description = "Toggles the aggregation interval for collecting flow logs"
#   type        = string
#   default     = "INTERVAL_10_MIN"
# }

# variable "flow_sampling" {
#   description = "Set the sampling rate of VPC flow logs within the subnetwork where 1.0 means all collected logs are reported and 0.0 means no logs are reported. Default is 0.5 which means half of all collected logs are reported."
#   type        = string
#   default     = "1.0"
# }

# variable "metadata" {
#   description = "Configures whether metadata fields should be added to the reported VPC flow logs. Default value is 'INCLUDE_ALL_METADATA'"
#   type        = string
#   default     = "INCLUDE_ALL_METADATA"
# }

#variable "module_depends_on" {
#  description = "List any resources this module depends on."
#  type        = list(any)
#  default     = []
#}