terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  client_id       = "4f04903f-ac12-4cc0-97e8-e21200d8a1e9"
  client_secret   = "NHv8Q~xjcjbsMJEiV9BSwm5yPtdU~dtCLq3AQaT6"
  tenant_id       = "e74a417b-ab67-48bd-921b-0fd6c5d2b1c2"
  subscription_id = "b98f53aa-1ec7-4951-b1fd-6ad6381b1ff0"
}

resource "azurerm_resource_group" "rg" {
  name     = var.azurerm_resource_group-name
  location = var.location
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.azurerm_virtual_network-name
  location            = var.location
  resource_group_name = var.azurerm_resource_group-name
  address_space       = var.address_space
  depends_on = [ var.azurerm_resource_group-name ]
}

resource "azurerm_subnet" "subnet001" {
  name                 = var.azurerm_subnet001
  resource_group_name  = var.azurerm_resource_group-name
  virtual_network_name = var.azurerm_virtual_network-name
  address_prefixes     = var.address_prefixes001
  depends_on = [ azurerm_virtual_network.vnet ]
}

resource "azurerm_subnet" "subnet002" {
  name                 = var.azurerm_subnet002
  resource_group_name  = var.azurerm_resource_group-name
  virtual_network_name = var.azurerm_virtual_network-name
  address_prefixes     = var.address_prefixes002
  depends_on = [ azurerm_virtual_network.vnet ]
}

resource "azurerm_subnet" "subnet003" {
  name                 = var.azurerm_subnet003
  resource_group_name  = var.azurerm_resource_group-name
  virtual_network_name = var.azurerm_virtual_network-name
  address_prefixes     = var.address_prefixes003
  depends_on = [ azurerm_virtual_network.vnet ]
}

resource "azurerm_network_security_group" "nsg" {
  name                = var.azurerm_network_security_group-name
  location            = var.location
  resource_group_name = var.azurerm_resource_group-name

  security_rule {
    name                       = var.name
    priority                   = var.priority
    direction                  = var.direction
    access                     = var.access
    protocol                   = var.protocol
    source_port_range          = var.source_port_range
    destination_port_range     = var.destination_port_range
    source_address_prefix      = var.source_address_prefix
    destination_address_prefix = var.destination_address_prefix
  }
}