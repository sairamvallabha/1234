variable "azurerm_resource_group-name" {
    type = string
  
}

variable "location" {
  type = string
}

variable "azurerm_virtual_network-name" {
  type = string
}

variable "address_space" {
  type = list
}

variable "azurerm_subnet001" {
  type = string
}
  
variable "address_prefixes001" {
  type = list
}

variable "azurerm_subnet002" {
  type = string
}

variable "address_prefixes002" {
  type = list
}

variable "azurerm_subnet003" {
  type = string
}

variable "address_prefixes003" {
  type = list
}

variable "azurerm_network_security_group-name" {
  type = string
}

variable "name" {
  type = string
}

variable "priority" {
  type = number
}

variable "direction" {
  type = string
}

variable "access" {
  type = string
}

variable "protocol" {
  type = string
}

variable "source_port_range" {
  type = string
}

variable "destination_port_range" {
  type = string
}

variable "source_address_prefix" {
  type = string
}

variable "destination_address_prefix" {
  type = string
}