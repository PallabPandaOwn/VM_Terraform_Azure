terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }
  backend "azurerm" {
    resource_group_name  = "RG-Pallab"
    storage_account_name = "tfstatepallab"
    container_name       = "tfstate"
    key = "test.tfstate" 
  }
}

provider "azurerm" {
  features {}
}