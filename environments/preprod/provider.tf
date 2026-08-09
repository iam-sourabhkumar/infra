terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.0.1"
    }
  }
  backend "azurerm" {
    resource_group_name  = "sourabh-rgn"
    storage_account_name = "stchorpreprod"
    container_name       = "tfstate"
    key                  = "preprod.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}