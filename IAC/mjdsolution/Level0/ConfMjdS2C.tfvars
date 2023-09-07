CONFmjds2c = {
    
    storage_accounts = {
        name = "terraformcicddemo"
        container = "mjdaksterraoformcicd"
        resource_group_name = "terraform-ci-cd-demo"
        
    }

    # subscription = {
    #     subscription_id      = data.azurerm_client_config.current.subscription_id
    # }

    # tenant = {
    #     tenant_id            = data.azurerm_client_config.current.tenant_id
    # }

    landingzone = {
        current = { 
            level                = "level0"
            key                  = "lz-confmjds2c-level0.tfstate"  
            landingzone_tag = {
                          lztag = "mjds2cTAGS"
                     }  
        }
    }
    
}