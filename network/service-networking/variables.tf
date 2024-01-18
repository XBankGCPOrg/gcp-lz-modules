variable "network" {
  type        = string
  description = "Network name"
  default     = null
}

variable "reserved_peering_ranges" {
  type        = list(string)
  description = "List of ip address name"
}

variable "project_id" {
  type        = string
  description = "The project ID to create the address in"
}

variable "import_custom_routes" {
  type        = bool
  default     = false
  description = "Import custom routes default false"
}

variable "export_custom_routes" {
  type        = bool
  default     = false
  description = "Export custom routes default is false"
}