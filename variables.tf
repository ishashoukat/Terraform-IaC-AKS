variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
  default     = "rg-terraform-aks-dev"
}

variable "location" {
  description = "Azure region where resources will be deployed"
  type        = string
  default     = "Sweden Central"
}

variable "vnet_name" {
  description = "Name of the Azure Virtual Network"
  type        = string
  default     = "vnet-aks-dev"
}

variable "vnet_address_space" {
  description = "Address space for the Azure Virtual Network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}