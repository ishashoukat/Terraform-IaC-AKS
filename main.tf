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