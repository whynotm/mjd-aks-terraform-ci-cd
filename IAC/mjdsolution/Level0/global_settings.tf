
data "azurerm_client_config" "default" {}
data "azurerm_client_config" "current" {}

#Data Source: azurerm_client_config
# client_id is set to the Azure Client ID (Application Object ID).
# tenant_id is set to the Azure Tenant ID.
# subscription_id is set to the Azure Subscription ID.
# object_id is set to the Azure Object ID.

resource "random_string" "prefix" {
  count   = var.global_settings.prefix == null ? 1 : 0
  length  = 4
  special = false
  upper   = false
  #number  = false  ## Because is deprecated . i m on 07/09/2023. Terraform v1.5.6  .   provider registry.terraform.io/hashicorp/random v3.3.2
  numeric = false
}