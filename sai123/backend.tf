terraform {
  backend "azurerm" {
    resource_group_name  = "man-01"
    storage_account_name = "storageaccountonly"
    container_name       = "conatainer001"
    key                  = "prod.terraform.tfstate"
  }
}
