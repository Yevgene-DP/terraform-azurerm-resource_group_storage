terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.105.0"
    }
  }
}

provider "azurerm" {
  features {}
}

# Використання модуля з реєстру Terraform
module "resource_group_storage" {
  source  = "Yevgene-DP/resource_group_storage/azurerm"
  version = "1.0.0"

  resource_group_name   = "rg-terraform-example"
  location             = "West Europe"
  storage_account_name  = "stterraformex123"
  create_container      = true
  container_name       = "terraform-files"
  
  tags = {
    Environment = "Development"
    Project     = "Terraform Module"
    Owner       = "Terraform"
  }
}

# Output values
output "storage_account_name" {
  value = module.resource_group_storage.storage_account_name
}

output "resource_group_name" {
  value = module.resource_group_storage.resource_group_name
}

output "storage_container_name" {
  value = module.resource_group_storage.storage_container_name
}