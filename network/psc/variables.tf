variable "project_id" {
  description = "The Project ID for the VPC"
  type        = string
  default     = "prj-c-networking"
}

variable "psc_internal_ip_name" {
  description = "Name of the GCP PSC LB internal IP"
  type        = string
}

variable "psc_forwarding_rule_name" {
  description = "Name of the GCP PSC LB forwarding rule"
  type        = string
}

variable "region" {
  description = "The GCP region"
  type        = string
}