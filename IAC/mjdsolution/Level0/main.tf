 
 terraform {

  backend "azurerm"  {
       
        # storage_account_name = local.azurerm.storage_accounts.name
        # container_name       = local.azurerm.storage_accounts.containers
        # resource_group_name  = local.azurerm.storage_accounts.resource_group_name
        # key                  = local.landingzone..current.key
        # #level                = var.CONFmjds2c.landingzone.level
        # tenant_id            = data.azurerm_client_config.current.tenant_id
        # subscription_id      = data.azurerm_client_config.current.subscription_id
      
      # remote = {
      #   hostname     = try(var.tfstate_hostname, "app.terraform.io")
      #   organization = var.tfstate_organization
      #   workspaces = {
      #     name = var.workspace
      #   }
      # }
  }


 }