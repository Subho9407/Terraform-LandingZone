terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.96.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "DoNotDeleteBackend"
    storage_account_name = "subhojitbackendconfigsa"
    container_name       = "statefile"
    key                  = "subhojit.terraform.tfstate"
  }

}

provider "azurerm" {
  features {}
}