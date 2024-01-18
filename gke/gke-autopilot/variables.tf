variable "cluster_config" {
  description = "Configuration for the GKE cluster"
  type = object({
    name                          = string
    location                      = string
    project                       = string
    network                       = string
    subnetwork                    = string
    service_account               = string
    cluster_ipv4_cidr             = string
    services_ipv4_cidr            = string
    master_authorized_networks    = string
    master_ipv4_cidr              = string
    create_service_account        = bool
    cluster_secondary_range_name  = string
    services_secondary_range_name = string
    security_group                = string
    resource_labels               = map(string)
  })
  default = {
    name                          = "test-gke-autopilot-n"
    location                      = "europe-west2"
    project                       = "prj-n-jigsaw-af5g"
    network                       = "vpc-n-shared-core-0"
    subnetwork                    = "your-subnetwork"
    service_account               = "sa-control@prj-b-lz-seed-er1w.iam.gserviceaccount.com"
    cluster_ipv4_cidr             = "10.0.0.0/16"
    services_ipv4_cidr            = "10.1.0.0/20"
    master_authorized_networks    = "0.0.0.0/0" # Restrict as per your needs
    master_ipv4_cidr              = "172.16.0.0/28"
    create_service_account        = true
    cluster_secondary_range_name  = "sb-n-shared-gke-test-europe-west2-net-secondary-pods-0"
    services_secondary_range_name = "sb-n-shared-gke-test-europe-west2-net-secondary-svcs-0"
    security_group                = "gke-security-groups@yourdomain.com"
    resource_labels = {
      "env" = "test"
    }
  }
}
