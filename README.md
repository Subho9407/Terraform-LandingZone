# Introduction 
This is a Code for Landing Zone in Azure Cloud Platform using IaC Tool Terraform using Modules.

# Description
We created two major folders Environemtns and Modules. In Modules, we have created multiple modules with foreach and map. and in Environemnt we were having the main code with terraform.tfvars.

# Update as per your needs

Updating Backend:
Environment --> provider.tf --> edit the "backend "azurerm"" block

For Key Vault Access:
Modules --> 5KV --> resource "azurerm_role_assignment" "role" --> Update "principal_id" with your User Tenant ID.

User Tenant ID Steps:
Azure Portal --> Microsoft Entra ID --> Users(Left) --> Search your User and click --> Object ID

# Deployment of Landing Zone:

1. Clone into your local.
2. Navigate to Environment Folder.
3. Follow Terraform Workflow.
