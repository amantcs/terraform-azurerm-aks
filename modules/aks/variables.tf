variable "resource_group_name" {
  description = "The name of the resource group in which to create the Kubernetes Cluster."
  type        = string
}

variable "location" {
  description = "The location where the Kubernetes Cluster should be created."
  type        = string
}

variable "cluster_name" {
  description = "The name of the Kubernetes Cluster."
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix specified when creating the managed cluster."
  type        = string
}

variable "node_count" {
  description = "The initial number of nodes which should exist in this Node Pool."
  type        = number
  default     = 1
}

variable "vm_size" {
  description = "The size of the Virtual Machine."
  type        = string
  default     = "Standard_D2_v2"
}

variable "kubernetes_version" {
  description = "Version of Kubernetes specified when creating the AKS managed cluster."
  type        = string
  default     = null # If null, the latest recommended version will be used
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
