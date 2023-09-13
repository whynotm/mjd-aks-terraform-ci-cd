# locals {

# remote_state = {
#     azurerm = {
#       #for key, value in try(var.landingzone.tfstates, {}) : key => {
#         container_name       = var.CONFmjds2c.storage_accounts.container
#         #sa_key                  = launchpad.storage_accounts.sa_key
#         key                  = var.CONFmjds2c.landingzone.current.key
#         resource_group_name  = var.CONFmjds2c.storage_accounts.resource_group_name
#         storage_account_name = var.CONFmjds2c.storage_accounts.name
#         # subscription_id      = var.CONFmjds2c.subscription.subscription_id
#         # tenant_id            = var.CONFmjds2c.tenant.tenant_id
#         #sas_token            = try(value.sas_token, null) != null ? var.sas_token : null
#       #} if try(value.backend_type, "azurerm") == "azurerm"
#     } 
#     # remote = {
#     #   #for key, value in try(var.landingzone.tfstates, {}) : key => {
#     #     hostname     = try(value.hostname, null)
#     #     organization = value.organization
#     #     workspaces = {
#     #       name = value.workspace
#     #     }
#     #   #} if try(value.backend_type, "azurerm") == "remote"
#     # }

#     }
# }