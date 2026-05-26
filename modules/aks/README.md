# Azure Kubernetes Service (AKS) Terraform Module

This Terraform module deploys an Azure Kubernetes Service (AKS) cluster.

## Usage

```hcl
module "aks" {
  source = "./modules/aks"

  cluster_name        = "my-aks-cluster"
  location            = "East US"
  resource_group_name = "my-resource-group"
  dns_prefix          = "my-aks-dns"

  node_count          = 3
  vm_size             = "Standard_D2_v2"

  tags = {
    Environment = "Development"
  }
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| `cluster_name` | The name of the Kubernetes Cluster. | `string` | n/a | yes |
| `location` | The location where the Kubernetes Cluster should be created. | `string` | n/a | yes |
| `resource_group_name` | The name of the resource group in which to create the Kubernetes Cluster. | `string` | n/a | yes |
| `dns_prefix` | DNS prefix specified when creating the managed cluster. | `string` | n/a | yes |
| `node_count` | The initial number of nodes which should exist in this Node Pool. | `number` | `1` | no |
| `vm_size` | The size of the Virtual Machine. | `string` | `"Standard_D2_v2"` | no |
| `kubernetes_version` | Version of Kubernetes specified when creating the AKS managed cluster. If null, the latest recommended version will be used. | `string` | `null` | no |
| `tags` | A mapping of tags to assign to the resource. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| `id` | The Kubernetes Managed Cluster ID. |
| `kube_config` | The kube_config raw content. (Sensitive) |
| `fqdn` | The FQDN of the Azure Kubernetes Managed Cluster. |
| `node_resource_group` | The auto-generated Resource Group which contains the resources for this Managed Kubernetes Cluster. |
