terraform {
   backend "local" {
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.99.0"
    }
  }
  # required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}
provider "azurerm" {
  features {}
  alias                      = "vhub"
  skip_provider_registration = true
  subscription_id = data.azurerm_client_config.default.subscription_id
  tenant_id       = data.azurerm_client_config.default.tenant_id
}



data "azurerm_client_config" "default" {}


