# gke-standard

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 5.7.0 |
| <a name="requirement_google-beta"></a> [google-beta](#requirement\_google-beta) | >= 5.7.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_private-standard-cluster"></a> [private-standard-cluster](#module\_private-standard-cluster) | git::https://github.com/terraform-google-modules/terraform-google-kubernetes-engine.git//modules/private-cluster | v2 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_config"></a> [cluster\_config](#input\_cluster\_config) | Configuration for the GKE cluster | <pre>object({<br>    name = string<br>    #    location                      = string<br>    region                     = string<br>    project_id                 = string<br>    network                    = string<br>    subnetwork                 = string<br>    service_account            = string<br>    ip_range_pods              = string<br>    ip_range_services          = string<br>    master_authorized_networks = string<br>    master_ipv4_cidr           = string<br>    create_service_account     = bool<br>    network_project_id         = string<br>    #  local.region                  = string <br>    #  cluster_secondary_range_name  = string<br>    #  services_secondary_range_name = string<br>    #  security_group                = string<br>    machine_type    = string<br>    resource_labels = map(string)<br>  })</pre> | <pre>{<br>  "create_service_account": true,<br>  "ip_range_pods": "10.0.0.0/16",<br>  "ip_range_services": "10.1.0.0/20",<br>  "machine_type": "e2-standard-2",<br>  "master_authorized_networks": "0.0.0.0/0",<br>  "master_ipv4_cidr": "172.16.0.0/28",<br>  "name": "test-gke-standard-n",<br>  "network": "vpc-n-shared-core-0",<br>  "network_project_id": "prj-c-networking",<br>  "project_id": "prj-n-jigsaw-af5g",<br>  "region": "europe-west2",<br>  "resource_labels": {<br>    "env": "test"<br>  },<br>  "service_account": "sa-control@prj-b-lz-seed-er1w.iam.gserviceaccount.com",<br>  "subnetwork": "your-subnetwork"<br>}</pre> | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
