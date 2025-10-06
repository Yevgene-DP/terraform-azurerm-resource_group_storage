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
  source  = "Yevgene-DP/resource_group_storage/azurerm"
  version = "1.0.0"

  resource_group_name  = "rg-terraform-example"
  location             = "West Europe"
  storage_account_name = "stterraformex123"
  create_container     = true
  container_name       = "terraform-files"
# solution all errors

  tags = {
    Environment = "Development"
    Project     = "Terraform Module"
  }
}