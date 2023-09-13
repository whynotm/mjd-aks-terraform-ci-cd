terraform init -backend-config="./backendConf.hcl" -reconfigure

###########
terraform plan -var-file="global_settings.tfvars" `
-var-file="ConfMjdS2C.tfvars" `
-out lz-confmjds2c-level1.plan



terraform apply .\lz-confmjds2c-level1.plan

terraform -chdir="C:/MJDRepos/GITHUB/mjd-aks-terraform-ci-cd/IAC/mjdsolution/Level1" `
 plan  -state="lz-confmjds2c-level1.tfstate" `
 -var-file="global_settings.tfvars" `
 -var-file="ConfMjdS2C.tfvars"

terraform -chdir="C:/MJDRepos/GITHUB/mjd-aks-terraform-ci-cd/IAC/mjdsolution/Level1" `
 apply  -state="lz-confmjds2c-level1.tfstate" `
 -var-file="global_settings.tfvars" `
 -var-file="ConfMjdS2C.tfvars"



terraform -chdir="C:/MJDRepos/GITHUB/mjd-aks-terraform-ci-cd/IAC/mjdsolution/Level0" `
init -backend-config="C:/MJDRepos/GITHUB/mjd-aks-terraform-ci-cd/IAC/mjdsolution/Level0/backendConf.hcl" 


terraform -chdir="C:/MJDRepos/GITHUB/mjd-aks-terraform-ci-cd/IAC/mjdsolution/Level0" `
>> init -backend-config="C:/MJDRepos/GITHUB/mjd-aks-terraform-ci-cd/IAC/mjdsolution/Level0/backendConf.hcl" -reconfigure



#####################                           TODO
 export TF_VAR_tfstate_storage_account_name=$(echo ${stg} | jq -r .name) && echo " - storage_account_name (current): ${TF_VAR_tfstate_storage_account_name}"
    export TF_VAR_lower_storage_account_name=$(az keyvault secret show --subscription ${TF_VAR_tfstate_subscription_id} -n lower-storage-account-name --vault-name ${keyvault} -o json 2>/dev/null | jq -r .value || true) && echo " - storage_account_name (lower): ${TF_VAR_lower_storage_account_name}"

    export TF_VAR_tfstate_resource_group_name=$(echo ${stg} | jq -r .resourceGroup) && echo " - resource_group (current): ${TF_VAR_tfstate_resource_group_name}"
    export TF_VAR_lower_resource_group_name=$(az keyvault secret show --subscription ${TF_VAR_tfstate_subscription_id} -n lower-resource-group-name --vault-name ${keyvault} -o json 2>/dev/null | jq -r .value || true) && echo " - resource_group (lower): ${TF_VAR_lower_resource_group_name}"

    export TF_VAR_tfstate_container_name=${azurerm_workspace}
    export TF_VAR_lower_container_name=${azurerm_workspace}

    export TF_VAR_tfstate_key=${TF_VAR_tf_name}

###################