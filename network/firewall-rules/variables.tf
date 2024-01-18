variable "name" {
  type        = string
  description = "Name of the firewall rule"
}

variable "description" {
  type        = string
  description = "Description of the fireall rule"
  default     = null
}

variable "direction" {
  type        = string
  description = "INGRESS or EGRESS"
  default     = "INGRESS"
}

variable "disabled" {
  type    = bool
  default = null
}

variable "priority" {
  type    = number
  default = null
}

variable "destination_ranges" {
  type    = list(string)
  default = []
}

variable "source_ranges" {
  type    = list(string)
  default = []
}

variable "source_tags" {
  type    = list(string)
  default = []
}

variable "source_service_accounts" {
  type    = list(string)
  default = []
}

variable "target_tags" {
  type    = list(string)
  default = []
}

variable "target_service_accounts" {
  type    = list(string)
  default = []
}

variable "allow" {
  type = list(object({
    protocol = string
    ports    = optional(list(string))
  }))
  default = []
}

variable "deny" {
  type = list(object({
    protocol = string
    ports    = optional(list(string))
  }))
  default = []
}

variable "log_config" {
  type = object({
    metadata = string
  })
  default = null
}

variable "network_name" {
  type        = string
  description = "Network name"
}

variable "project_id" {
  type        = string
  description = "Project Id"
}