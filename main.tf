module "storage" {
  source  = "Yevgene-DP/resource_group_storage/azurerm"
  version = "1.0.0"

  resource_group_name  = "rg-terraform-example"
  location             = "West Europe"
  storage_account_name = "stterraformex123"
  create_container     = true
  container_name       = "terraform-files"

  tags = {
    Environment = "Development"
    Project     = "Terraform Module"
  }
}
