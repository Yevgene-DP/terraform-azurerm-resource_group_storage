# Azure Resource Group and Storage Account Module

Terraform module for creating Azure Resource Group and Storage Account.

## Usage

```hcl
module "storage" {
  source = "Yevgene-DP/resource_group_storage/azurerm"
  version = "1.0.0"

  resource_group_name  = "rg-example"
  storage_account_name = "stexample123"
  location            = "West Europe"
  create_container    = true
}
```

## Examples

See the [examples directory](../../examples/) for complete usage examples.

## Requirements

- Terraform >= 1.0
- Azurerm provider >= 3.0

## Inputs/Outputs

See [variables.tf](./variables.tf) and [outputs.tf](./outputs.tf) for complete documentation.