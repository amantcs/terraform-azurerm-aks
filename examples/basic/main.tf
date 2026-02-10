provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "${var.prefix}-resources"
  location = var.location
}

module "aks" {
  source = "../../modules/aks"

  cluster_name        = "${var.prefix}-cluster"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  dns_prefix          = "${var.prefix}-dns"

  node_count = 2
  vm_size    = "Standard_D2_v2"

  tags = {
    Environment = "Development"
  }
}
