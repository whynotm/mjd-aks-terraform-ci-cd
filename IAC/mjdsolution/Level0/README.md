terraform init -backend-config="./backendConf.hcl" -reconfigure

###########
terraform plan -var-file="global_settings.tfvars" `
-var-file="ConfMjdS2C.tfvars" `
-out lz-confmjds2c-level0.plan



terraform apply .\lz-confmjds2c-level0.plan


set TF_LOG=trace
%TF_LOG%

export TF_CLI_ARGS="-state=terraform.tfstate -debug"

$env:TF_DATA_DIR="C://MJDRepos//GITHUB//mjd-aks-terraform-ci-cd//Temp"

set TF_DATA_DIR="C://MJDRepos//GITHUB//mjd-aks-terraform-ci-cd//Temp"


$env:TF_DATA_DIR="C:/MJDRepos/GITHUB/mjd-aks-terraform-ci-cd/Temp"


terraform -chdir="C:/MJDRepos/GITHUB/mjd-aks-terraform-ci-cd/IAC/mjdsolution/Level0" `
 plan  -state="lz-confmjds2c-level0.tfstate" `
 -var-file="global_settings.tfvars" `
 -var-file="ConfMjdS2C.tfvars"

terraform -chdir="C:/MJDRepos/GITHUB/mjd-aks-terraform-ci-cd/IAC/mjdsolution/Level0" `
 apply  -state="lz-confmjds2c-level0.tfstate" `
 -var-file="global_settings.tfvars" `
 -var-file="ConfMjdS2C.tfvars"

terraform -chdir="C:/MJDRepos/GITHUB/mjd-aks-terraform-ci-cd/IAC/mjdsolution/Level0" `
init -backend-config="C:/MJDRepos/GITHUB/mjd-aks-terraform-ci-cd/IAC/mjdsolution/Level0/backendConf.hcl" 


terraform -chdir="C:/MJDRepos/GITHUB/mjd-aks-terraform-ci-cd/IAC/mjdsolution/Level0" `
>> init -backend-config="C:/MJDRepos/GITHUB/mjd-aks-terraform-ci-cd/IAC/mjdsolution/Level0/backendConf.hcl" -reconfigure