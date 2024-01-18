# vm

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
| <a name="provider_google"></a> [google](#provider\_google) | >= 5.7.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_compute_instance.my_vm](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_vm_config"></a> [vm\_config](#input\_vm\_config) | Bastion host for GKE | <pre>object({<br>    name       = string<br>    location   = string<br>    network    = string<br>    subnetwork = string<br>    email      = string<br>    project    = string<br>    zone       = string<br>    tag        = string<br>  })</pre> | <pre>{<br>  "email": "sa-n-jigsaw-vm@prj-n-jigsaw-af5g.iam.gserviceaccount.com",<br>  "location": "europe-west2",<br>  "name": "dev-jumphost",<br>  "network": "vpc-n-shared-core-0",<br>  "project": "prj-n-jigsaw-af5g",<br>  "subnetwork": "your-subnetwork",<br>  "tag": "",<br>  "zone": "europe-west2-a"<br>}</pre> | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
