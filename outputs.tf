output "resource_group_name" {
  description = "Name of the created Azure Resource Group"
  value       = azurerm_resource_group.aks_rg.name
}

output "resource_group_id" {
  description = "ID of the created Azure Resource Group"
  value       = azurerm_resource_group.aks_rg.id
}

output "vnet_name" {
  description = "Name of the created Azure Virtual Network"
  value       = azurerm_virtual_network.aks_vnet.name
}

output "vnet_id" {
  description = "ID of the created Azure Virtual Network"
  value       = azurerm_virtual_network.aks_vnet.id
}

output "vnet_address_space" {
  description = "Address space of the Azure Virtual Network"
  value       = azurerm_virtual_network.aks_vnet.address_space
}