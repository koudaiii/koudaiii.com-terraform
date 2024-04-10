terraform {
  required_providers {
    # We strongly recommend using the required_providers block to set the
    # Azure Provider source and version being used https://registry.terraform.io/providers/hashicorp/azuread/latest
    azuread = {
      source  = "hashicorp/azuread"
      version = "=2.41.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.98.0"
    }
  }
  required_version = "1.7.5"

  # Store Terraform state in Azure Storage
  backend "azurerm" {
    resource_group_name  = "koudaiii.com-terraform"
    storage_account_name = "koudaiiicom"
    container_name       = "tfstate"
    # Statment File Name
    key = "koudaiii.com-terraform.tfstate"
  }
}
