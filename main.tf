terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.16.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "5dce397f-146b-42af-8708-e37fa06b79d7"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "RG3"
    storage_account_name = "jenkinsstatedan260106"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}

resource "azurerm_resource_group" "example" {
  name     = "RG2"
  location = "westeurope"
}
