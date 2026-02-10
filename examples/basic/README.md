# Basic AKS Example

This example demonstrates how to use the AKS module to create an Azure Kubernetes Service cluster along with a resource group.

## Prerequisites

- Terraform >= 0.13
- Azure CLI authenticated or Service Principal credentials set as environment variables.

## Usage

1. Initialize Terraform:
   ```bash
   terraform init
   ```

2. Review the plan:
   ```bash
   terraform plan
   ```

3. Apply the configuration:
   ```bash
   terraform apply
   ```

## Outputs

After a successful apply, the following outputs will be available:

- `id`: The ID of the AKS cluster.
- `kube_config`: The kubeconfig to access the cluster (sensitive).
- `fqdn`: The FQDN of the cluster.

To get the kubeconfig:
```bash
terraform output -raw kube_config > kubeconfig
export KUBECONFIG=./kubeconfig
kubectl get nodes
```
