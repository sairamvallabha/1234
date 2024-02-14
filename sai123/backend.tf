terraform {
  backend "azurerm" {
    resource_group_name  = "resource-rg"
    storage_account_name = "ssaccountnameisaccount"
    container_name       = "conatainerone"
    key                  = "prod.terraform.tfstate"
  }
}
