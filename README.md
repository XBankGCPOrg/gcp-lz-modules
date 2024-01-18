# gcp-lz-modules

Repo that provides the basic building block terraform modules which is used by products to create resources on GCP.

Here is the list of available modules:

```code
├── bigquery
│   └── dataset
├── compute
│   └── cloudfunction
├── devops
│   ├── artifact_registry
│   └── repository
├── gke
│   └── gke-autopilot
├── iam
│   ├── org_policy
│   ├── policy
│   └── service_account
├── kms
│   ├── key
│   └── key_ring
├── log_sink
├── network
│   ├── psc
│   ├── routes
│   ├── subnets
│   ├── vpc
│   └── vpc-peering
├── pubsub
│   └── topic
├── resources
│   ├── folder
│   ├── multi_level_folder
│   ├── organization
│   ├── project
│   └── service_identity
├── storage
│   └── bucket
├── vm
└── vm-windows
```
`tree -d -I docs`

For more details [click here](https://github.com/XBankGCPOrg/gcp-lz-bootstrap/blob/main/README.md)
