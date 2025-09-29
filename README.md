HEAD
# Working with Terraform Modules

## Prerequisites

To complete this task, Terraform and Azure CLI must be installed and configured on your machine.

## Steps to Complete the Task

**1. Fork this Repository**

**2. Create a Simple Terraform Module**

- Create a directory named `modules/resource_group_storage` in the root of your repository.
- Inside the `modules/resource_group_storage` directory, create the following files:
    * `main.tf`: define the resources.
    * `variables.tf`: define the variables.
    * `outputs.tf`: define the outputs.

**3. Publish the Module on GitHub**

- Create a new repository on GitHub named according to Terraform's naming convention, e.g.`terraform-azurerm-resource_group_storage`.
- Add the module files (`main.tf`, `variables.tf`, `outputs.tf`) to this repository.
- Add an `INSTRUCTION.md` file with detailed usage instructions.
- Add a `LICENSE` file to specify the usage rights.
- Add a `.gitignore` file to ignore Terraform state files and other sensitive information.
- Commit and push the files to GitHub.

**4. Publish the Module to Terraform Registry**

- Ensure your GitHub repository name follows the format `terraform-<PROVIDER>-<MODULE_NAME>`.
- Sign in to the Terraform Registry with your GitHub account.
- Publish the module by linking your GitHub repository to the Terraform Registry.
- Tag the repository with a version (e.g., `v1.0.0`) following semantic versioning.

**5. Use the Module from Terraform Registry**

- In your main Terraform configuration (`main.tf`), use the module from the Terraform Registry.
- Initialize and apply the configuration to verify that the module is used correctly.

**6. Pull request's description should also contain a reference to a successful workflow run**
=======
# terraform-azurerm-resource_group_storage
Terraform module for Azure Resource Group and Storage Account
>>>>>>> 1ccb26d2efd3c75d5be4635f2c21626c465a825d
