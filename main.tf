resource "azurerm_resource_group" "aks_rg" {
  name     = "rg-terraform-aks-dev"
  location = "Sweden Central"
}

resource "azurerm_virtual_network" "aks_vnet" {
  name                = "vnet-aks-dev"
  location            = azurerm_resource_group.aks_rg.location
  resource_group_name = azurerm_resource_group.aks_rg.name
  address_space       = ["10.0.0.0/16"]
}
resource "azurerm_subnet" "aks_subnet" {
  name                 = "snet-aks-dev"
  resource_group_name  = azurerm_resource_group.aks_rg.name
  virtual_network_name = azurerm_virtual_network.aks_vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}
resource "azurerm_kubernetes_cluster" "aks" {
  name                = "aks-terraform-dev"
  location            = azurerm_resource_group.aks_rg.location
  resource_group_name = azurerm_resource_group.aks_rg.name
  dns_prefix          = "aksdev"

  default_node_pool {
    name           = "system"
    node_count     = 2
    vm_size        = "Standard_D2s_v5"
    vnet_subnet_id = azurerm_subnet.aks_subnet.id
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin = "azure"
  }
}