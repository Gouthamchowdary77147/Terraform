terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.18.0"
    }
  }
  required_version = ">=1.10.5"
}

provider "azuread" {

}

provider "azurerm" {
  subscription_id = "1b51bb52-95ce-4445-aece-557a3f7b6279"
  features {}
  #use_msi=true
  #msi_client_id= 4750a684-286a-4e1b-bdea-0fc263b44719
}

resource "azurerm_resource_group" "rg" {
  name     = "rg_entraid_management"
  location = "South Central US"
}

