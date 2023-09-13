module "caf" {
  #source  = "../../Modules/cafsolution/terraform-azurerm-caf"
  source = "C://MJDRepos//GITHUB//terraform-azurerm-caf"
  #version = "5.6.8"
#   version = "5.7.0"
  # insert the 7 required variables here

 providers = {
    azurerm.vhub = azurerm.vhub
    azurerm      = azurerm
  }

 global_settings = var.global_settings
 resource_groups = var.resource_groups
 logged_user_objectId        = var.logged_user_objectId


 networking = {
    vnets               = var.vnets
 }


}
