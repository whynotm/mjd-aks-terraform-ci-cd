CONFmjds2c = {
    
    storage_accounts = {
        name = "terraformcicddemo"
        container = "mjdaksterraoformcicd070923"  #"mjdaksterraoformcicd"
        resource_group_name = "terraform-ci-cd-demo"
        
    }
    
    #TO GET FROM LEVEL0
    subscription = { #MWE CAN SET anagement Subscription : a32a7cc4-6bf5-4209-aa88-a03bb7182e27
        subscription_id      = "a32a7cc4-6bf5-4209-aa88-a03bb7182e27" #data.azurerm_client_config.default.subscription_id
    }

    tenant = {  # USUALLY SAME TENANT 
        tenant_id            = "96942156-5f09-48e3-b7f9-67d4eb3d8552" #data.azurerm_client_config.default.tenant_id
    }
    
    landingzone = {
        current = { 
            level                = "level1"
            key                  = "lz-confmjds2c-level1.tfstate"  
            landingzone_tag = {
                          lztag = "mjds2cTAGS"
                     }  
        }
        remotefstate = {
                level0tfstate   = {
                        level = "level0"
                        key = "lz-confmjds2c-level0.tfstate"

                }

        }
    }
    
}