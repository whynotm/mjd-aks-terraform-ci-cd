
data "azurerm_client_config" "default" {}
data "azurerm_client_config" "current" {}

#Data Source: azurerm_client_config
# client_id is set to the Azure Client ID (Application Object ID).
# tenant_id is set to the Azure Tenant ID.
# subscription_id is set to the Azure Subscription ID.
# object_id is set to the Azure Object ID.


locals {
    global_settings = merge(
        var.global_settings,
        #try(data.terraform_remote_state.remote["level0tfstate"].outputs.global_settings, null)
        try(data.terraform_remote_state.remote[keys(var.CONFmjds2c.landingzone.remotefstate)[0]].outputs.global_settings, null)
        #try(data.terraform_remote_state.remote[var.landingzone.global_settings_key].outputs.objects[var.landingzone.global_settings_key].global_settings, null),
        #try(data.terraform_remote_state.remote[var.landingzone.global_settings_key].outputs.global_settings, null),
        #try(data.terraform_remote_state.remote[keys(var.landingzone.tfstates)[0]].outputs.global_settings, null),
        #local.custom_variables
    )
}

