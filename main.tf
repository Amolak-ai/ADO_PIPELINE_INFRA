terraform {
    backend "azurerm" {
    resource_group_name   = "amol-rg"
    storage_account_name  = "storageak"
    container_name        = "containerak"
    key                   = "terraform.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.44.0"
    }
    
  }
}

provider "azurerm" {
  features {}
  subscription_id = "e5776277-6d0c-4f2c-97d3-a378ac7502d6"
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-ado-pipeline-infra"
  location = "West Europe"
}