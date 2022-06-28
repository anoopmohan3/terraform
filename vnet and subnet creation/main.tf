# Terraform Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.0" 
    }
    random = {
      source = "hashicorp/random"
      version = ">= 3.0"
    }
  }
}

# Provider Block
provider "azurerm" {
 features {}  
skip_provider_registration = "true" 
}



resource "azurerm_virtual_network" "vnet" {
  name = "testmnet"
  location = "eastus"
  address_space = ["20.0.0.0/16"]
  resource_group_name = "1-fecb9e55-playground-sandbox"
  subnet {

    name = "subnet1"
    address_prefix = "20.0.1.0/24"
  }
  
}
