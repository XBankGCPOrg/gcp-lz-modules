variable "cluster_config" {
  description = "Configuration for the GKE cluster"
  type = object({
    name = string
    #    location                      = string
    region                     = string
    project_id                 = string
    network                    = string
    subnetwork                 = string
    service_account            = string
    ip_range_pods              = string
    ip_range_services          = string
    master_authorized_networks = string
    master_ipv4_cidr           = string
    create_service_account     = bool
    network_project_id         = string
    #  local.region                  = string 
    #  cluster_secondary_range_name  = string
    #  services_secondary_range_name = string
    #  security_group                = string
    machine_type    = string
    resource_labels = map(string)
  })
  default = {
    name                       = "test-gke-standard-n"
    region                     = "europe-west2"
    project_id                 = "prj-n-jigsaw-af5g"
    network                    = "vpc-n-shared-core-0"
    subnetwork                 = "your-subnetwork"
    service_account            = "sa-control@prj-b-lz-seed-er1w.iam.gserviceaccount.com"
    ip_range_pods              = "10.0.0.0/16"
    ip_range_services          = "10.1.0.0/20"
    master_authorized_networks = "0.0.0.0/0" # Restrict as per your needs
    master_ipv4_cidr           = "172.16.0.0/28"
    create_service_account     = true
    #    cluster_secondary_range_name  = "sb-n-shared-gke-test-europe-west2-net-secondary-pods-0"
    #    services_secondary_range_name = "sb-n-shared-gke-test-europe-west2-net-secondary-svcs-0"
    #    security_group                = "gke-security-groups@yourdomain.com"
    machine_type       = "e2-standard-2"
    network_project_id = "prj-c-networking"
    resource_labels = {
      "env" = "test"
    }
  }
}
