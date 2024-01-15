variable "shared_vpc" {
  type = object({
    project         = string
    service_project = string
    service_account = string
    subnet          = string
  })
}