#############
export TF_VAR_logged_user_objectId=$(az ad signed-in-user show --query id -o tsv --only-show-errors)
or (for powershell)

$env:TF_VAR_logged_user_objectId=$(az ad signed-in-user show --query id -o tsv --only-show-errors)

  THATS EQUAL TO SET VARIABLE



##############
terraform plan -var-file="global_settings.tfvars" `
-var-file="resource_groups.tfvars" `
-var-file="virtual_network.tfvars" `
-var-file="peering.tfvars" `
-var-file="network_security_group_definition.tfvars" `
-out Level2-network.plan

#############
terraform apply "Level2-network.plan"

OR

terraform apply -var-file="global_settings.tfvars" `
-var-file="resource_groups.tfvars" `
-var-file="virtual_network.tfvars" `
-var-file="peering.tfvars" `
-var-file="network_security_group_definition.tfvars" `

###############################################

terraform destro

terraform destroy -var-file="global_settings.tfvars" `
-var-file="resource_groups.tfvars" `
-var-file="virtual_network.tfvars" `
-var-file="peering.tfvars" `
-var-file="network_security_group_definition.tfvars"