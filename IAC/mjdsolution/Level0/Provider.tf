# terraform {
#    backend "local" {
#   }
#   required_providers {
#     azurerm = {
#       source  = "hashicorp/azurerm"
#       version = "2.99.0"
#     }
#   }
  # required_version = ">= 1.1.0"
#}

provider "azurerm" {
  features {}
}
# provider "azurerm" {
#   features {}
#   alias                      = "vhub"
#   skip_provider_registration = true
#   subscription_id = data.azurerm_client_config.default.subscription_id
#   tenant_id       = data.azurerm_client_config.default.tenant_id
# }



terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.3.0"
    }
    external = {
      source  = "hashicorp/external"
      version = "~> 2.2.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 3.1.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~> 3.1.0"
    }
    azurecaf = {
      source  = "aztfmod/azurecaf"
      version = "~> 1.2.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.15.0"
    }
  }
  required_version = ">= 0.15"
}


