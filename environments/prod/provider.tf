terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.0.1"
    }
  }
  backend "azurerm" {
    resource_group_name  = "sks01-dev"
    storage_account_name = "stchorpreprod"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  } 
}

provider "azurerm" {
  features {}
}
