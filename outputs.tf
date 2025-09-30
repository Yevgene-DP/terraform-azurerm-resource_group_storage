output "storage_container_name" {
  description = "The name of the storage container"
  value       = module.resource_group_storage.storage_container_name
}

output "storage_account_name" {
  description = "The name of the storage account"
  value       = module.resource_group_storage.storage_account_name
}

output "resource_group_name" {
  description = "The name of the resource group"
  value       = module.resource_group_storage.resource_group_name
}