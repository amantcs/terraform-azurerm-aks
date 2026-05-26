variable "prefix" {
  description = "A prefix used for all resources in this example"
  type        = string
  default     = "aks-example"
}

variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
  type        = string
  default     = "East US"
}
