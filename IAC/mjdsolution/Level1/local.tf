## MJD Initialize LEVEL 1 

locals {
  # remote = {
  #   azuread_service_principals = {
  #     #for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].azuread_service_principals, {}))
  #     #data.terraform_remote_state.remote.outputs.objects[key].azuread_service_principals
  #   }
  # }
  azurerm = {
      #for key, value in try(var.landingzone.tfstates, {}) : key => {        
        container_name       = var.CONFmjds2c.storage_accounts.container
        #sa_key                  = launchpad.storage_accounts.sa_key
        #key                  = var.CONFmjds2c.landingzone.current.key
        resource_group_name  = var.CONFmjds2c.storage_accounts.resource_group_name
        storage_account_name = var.CONFmjds2c.storage_accounts.name
        subscription_id      = var.CONFmjds2c.subscription.subscription_id
        tenant_id            = var.CONFmjds2c.tenant.tenant_id
        #sas_token            = try(value.sas_token, null) != null ? var.sas_token : null
      #} if try(value.backend_type, "azurerm") == "azurerm"
  } 
  landingzone = {
        current = { 
            level                = var.CONFmjds2c.landingzone.current.level
            key                  = var.CONFmjds2c.landingzone.current.key
        }
  }
  landingzone_tag = {
    landingzone               = var.CONFmjds2c.landingzone.current.landingzone_tag.lztag
    key                       = var.CONFmjds2c.landingzone.current.key
  }
}


# data "terraform_remote_state" "remote" {
# #   for_each = try(var.landingzone.tfstates, {})
# #   backend = var.landingzone.backend_type

#  try {
#   config  = local.remote_state.azurerm.key
#     }
# }