terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.105.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstatestorage"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

module "resource_group_storage" {
  source = "./modules/resource_group_storage"

  resource_group_name     = "my-resource-group"
  location                = "West Europe"
  storage_account_name    = "mystorageaccount123"
  storage_container_name  = "my-container"
}
