variable "name" {
  description = "The name for the project"
  type        = string
}

variable "folder" {
  description = "The parent folder for the project"
  type        = string
}

variable "services" {
  description = "The services to enable in this project"
  type        = set(string)
}

variable "billing_account" {
  description = "The billing account to use for this project"
  type        = string
}

variable "imported_project_id" {
  description = "The project id for importing project"
  type        = string
  default     = null
}

variable "labels" {
  description = "The labels for this project"
  type        = map(string)
  default     = null
}

