variable "vm_config" {
  description = "Bastion host for GKE"
  type = object({
    name       = string
    location   = string
    network    = string
    subnetwork = string
    email      = string
    project    = string
    zone       = string
  })
  default = {
    name       = "dev-jumphost"
    location   = "europe-west2"
    project    = "prj-n-jigsaw-af5g"
    network    = "vpc-n-shared-core-0"
    subnetwork = "your-subnetwork"
    email      = "sa-n-jigsaw-vm@prj-n-jigsaw-af5g.iam.gserviceaccount.com"
    zone       = "europe-west2-a"
  }
}
