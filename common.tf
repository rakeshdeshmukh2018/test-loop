# configure the provide

provider "azurerm" {

  features {}
  subscription_id = var.subscription_id

}


# create resource group 

resource "azurerm_resource_group" "rg" {

  name     = var.rg_name
  location = var.location["emea"]

}