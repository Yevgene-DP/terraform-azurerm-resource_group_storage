# Terraform Azure Resource Group and Storage Account Module

This Terraform module creates an Azure Resource Group and Storage Account with optional container.

## Usage

### Basic Usage

```hcl
module "resource_group_storage" {
  source = "Yevgene-DP/resource_group_storage/azurerm"
  version = "1.0.0"

  resource_group_name  = "rg-example"
  location            = "West Europe"
  storage_account_name = "stexample123"
}
```

### Advanced Usage

```hcl
module "resource_group_storage" {
  source = "Yevgene-DP/resource_group_storage/azurerm"
  version = "1.0.0"

  resource_group_name       = "rg-example"
  location                 = "West Europe"
  storage_account_name     = "stexample123"
  account_tier             = "Standard"
  account_replication_type = "GRS"
  account_kind             = "StorageV2"
  create_container         = true
  container_name          = "mycontainer"
  container_access_type   = "private"
  
  tags = {
    Environment = "Production"
    Project     = "Terraform"
  }
}
```

## Requirements

- Terraform 1.0+
- Azure Provider 3.0+

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| resource_group_name | The name of the resource group | `string` | n/a | yes |
| location | The Azure region | `string` | `"West Europe"` | no |
| storage_account_name | The name of the storage account | `string` | n/a | yes |
| account_tier | Storage account tier | `string` | `"Standard"` | no |
| account_replication_type | Replication type | `string` | `"LRS"` | no |
| account_kind | Storage account kind | `string` | `"StorageV2"` | no |
| create_container | Whether to create container | `bool` | `false` | no |
| container_name | Container name | `string` | `"container"` | no |
| container_access_type | Container access type | `string` | `"private"` | no |
| tags | Resource tags | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| resource_group_id | Resource Group ID |
| resource_group_name | Resource Group name |
| storage_account_id | Storage Account ID |
| storage_account_name | Storage Account name |
| storage_account_primary_access_key | Primary access key (sensitive) |
| storage_container_id | Container ID (if created) |

## Examples

See the [examples directory](./examples/) for more usage examples.

## License

This module is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.