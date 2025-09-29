# Terraform Module for Azure Resource Group and Storage Account

This repository contains a Terraform module for creating Azure Resource Group and Storage Account resources.

## Module Structure

```
modules/resource_group_storage/
├── main.tf                 # Main module configuration
├── variables.tf            # Input variables
├── outputs.tf              # Output values
└── README.md               # Module documentation
```

## Publishing to Terraform Registry

### Prerequisites
- GitHub account
- Terraform Cloud account
- Repository named `terraform-azurerm-resource_group_storage`

### Steps to Publish

1. **Create GitHub Repository**
   ```bash
   # Remove existing remote if needed
   git remote remove origin
   
   # Add correct remote for the module
   git remote add origin https://github.com/Yevgene-DP/terraform-azurerm-resource_group_storage.git
   
   # Push to GitHub
   git push -u origin main
   ```

2. **Create GitHub Release**
   - Go to your repository on GitHub
   - Click "Releases" → "Create a new release"
   - Tag version: `v1.0.0`
   - Release title: `v1.0.0`
   - Description: Initial release of Azure Resource Group and Storage Account module

3. **Publish to Terraform Registry**
   - Sign in to [Terraform Registry](https://registry.terraform.io)
   - Go to "Publish" → "Module"
   - Connect your GitHub repository
   - Select the repository and publish

## Using the Module

### From GitHub
```hcl
module "resource_group_storage" {
  source = "github.com/Yevgene-DP/terraform-azurerm-resource_group_storage//modules/resource_group_storage"
  
  resource_group_name  = "rg-example"
  storage_account_name = "stexample123"
  location            = "West Europe"
}
```

### From Terraform Registry (after publishing)
```hcl
module "resource_group_storage" {
  source  = "Yevgene-DP/resource_group_storage/azurerm"
  version = "1.0.0"

  resource_group_name  = "rg-example"
  storage_account_name = "stexample123"
  location            = "West Europe"
}
```

## Module Inputs

See [modules/resource_group_storage/README.md](modules/resource_group_storage/README.md) for complete documentation.

## License

MIT License - see [LICENSE](LICENSE) file for details.