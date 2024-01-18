# gke-autopilot

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 5.7.0 |
| <a name="requirement_google-beta"></a> [google-beta](#requirement\_google-beta) | >= 5.7.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google-beta"></a> [google-beta](#provider\_google-beta) | >= 5.7.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google-beta_google_container_cluster.gke-cluster](https://registry.terraform.io/providers/hashicorp/google-beta/latest/docs/resources/google_container_cluster) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_config"></a> [cluster\_config](#input\_cluster\_config) | Configuration for the GKE cluster | <pre>object({<br>    name                          = string<br>    location                      = string<br>    project                       = string<br>    network                       = string<br>    subnetwork                    = string<br>    service_account               = string<br>    cluster_ipv4_cidr             = string<br>    services_ipv4_cidr            = string<br>    master_authorized_networks    = string<br>    master_ipv4_cidr              = string<br>    create_service_account        = bool<br>    cluster_secondary_range_name  = string<br>    services_secondary_range_name = string<br>    security_group                = string<br>    resource_labels               = map(string)<br>  })</pre> | <pre>{<br>  "cluster_ipv4_cidr": "10.0.0.0/16",<br>  "cluster_secondary_range_name": "sb-n-shared-gke-test-europe-west2-net-secondary-pods-0",<br>  "create_service_account": true,<br>  "location": "europe-west2",<br>  "master_authorized_networks": "0.0.0.0/0",<br>  "master_ipv4_cidr": "172.16.0.0/28",<br>  "name": "test-gke-autopilot-n",<br>  "network": "vpc-n-shared-core-0",<br>  "project": "prj-n-jigsaw-af5g",<br>  "resource_labels": {<br>    "env": "test"<br>  },<br>  "security_group": "gke-security-groups@yourdomain.com",<br>  "service_account": "sa-control@prj-b-lz-seed-er1w.iam.gserviceaccount.com",<br>  "services_ipv4_cidr": "10.1.0.0/20",<br>  "services_secondary_range_name": "sb-n-shared-gke-test-europe-west2-net-secondary-svcs-0",<br>  "subnetwork": "your-subnetwork"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_gke_cluster_endpoint"></a> [gke\_cluster\_endpoint](#output\_gke\_cluster\_endpoint) | n/a |
| <a name="output_gke_cluster_location"></a> [gke\_cluster\_location](#output\_gke\_cluster\_location) | n/a |
| <a name="output_gke_cluster_master_ipv4_cidr"></a> [gke\_cluster\_master\_ipv4\_cidr](#output\_gke\_cluster\_master\_ipv4\_cidr) | n/a |
| <a name="output_gke_cluster_name"></a> [gke\_cluster\_name](#output\_gke\_cluster\_name) | n/a |
| <a name="output_gke_cluster_node_pool_sizes"></a> [gke\_cluster\_node\_pool\_sizes](#output\_gke\_cluster\_node\_pool\_sizes) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
