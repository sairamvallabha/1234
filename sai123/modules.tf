module "devenvi" {
    source = "./fff"

    azurerm_resource_group-name = "Devone-rg"
    location = "eastus"
    azurerm_virtual_network-name = "vnetone"
    address_space = ["10.0.0.0/16"]
    azurerm_subnet001 = "subnet001"
    address_prefixes001 = ["10.0.1.0/24"]
    azurerm_subnet002 = "subnet002"
    address_prefixes002 = ["10.0.2.0/24"]
    azurerm_subnet003 = "subnet002"
    address_prefixes003 = ["10.0.3.0/24"]
    azurerm_network_security_group-name = "nsg001"
    name = "nsgname"
    priority = 100
    direction = "Inbound"
    access = "Allow"
    protocol = "Tcp"
    source_port_range = "*"
    destination_port_range = "*"
    source_address_prefix = "*"
    destination_address_prefix = "*"
    
   

         
  
}
  
