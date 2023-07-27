terraform {

  required_providers {

    azurerm = {

      version = "= 3.66.0"

    }

  }

}
provider "azurerm" {

features {}
//sanath
}
resource "azurerm_resource_group" "resourcegroup" {

  name     = "CUR-TEST-SYSLOG-WE-RG-TEST"

  location = "West Europe"

}

 

resource "azurerm_virtual_network" "Vnet" {

  name                = "CUR-TEST-SYSLOG-WE-VNET-TEST"

  address_space       = ["10.0.0.0/18"]

  location            = azurerm_resource_group.resourcegroup.location

  resource_group_name = azurerm_resource_group.resourcegroup.name

}