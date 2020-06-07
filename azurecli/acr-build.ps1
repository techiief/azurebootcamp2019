echo "Login to azure account"
echo "Run command: az login"
echo "`n"
echo "OUTPUT"
az login
Write-Output "--------------------------------------------------------------------"
echo "`n"

echo "Set to your default account"
echo "Run command: az account set --subscription ""Pay-As-You-Go"""
echo "`n"
echo "OUTPUT"
az account set --subscription "Pay-As-You-Go"
Write-Output "--------------------------------------------------------------------"
echo "`n"

echo "Validate that you are in default account"
echo "Run command: az account show"
echo "`n"
echo "OUTPUT"
az account show
Write-Output "--------------------------------------------------------------------"
echo "`n"

echo "Create a Resource Group for the Container Demo"
echo "Run command: az group create --name dockerdemoRG --location eastus"
echo "`n"
echo "OUTPUT"
az group create --name myaksdemo1RG --location eastus
Write-Output "--------------------------------------------------------------------"
echo "`n"

echo "Create Container Registry under the new resource group created"
echo "Run command: az acr create --resource-group dockerdemoRG --name acrdemo1 --sku Basic"
echo "`n"
echo "OUTPUT"
az acr create --resource-group myaksdemo1RG --name acrdemo1 --sku Basic
Write-Output "--------------------------------------------------------------------"
echo "`n"

echo "Login to Container Registry created"
echo "Run command: az acr login --name acrdemo1"
echo "`n"
echo "OUTPUT"
az acr login --name acrdemo1
Write-Output "--------------------------------------------------------------------"
echo "`n"

echo "Publish docker images created to container registry"
echo "Run command: docker push  acrdockerdemoeastus.azurecr.io/helloworldweb:v1"
echo "`n"
echo "OUTPUT"
docker push  acrdemo1.azurecr.io/helloworldweb:v1
Write-Output "--------------------------------------------------------------------"
echo "`n"
echo "OUTPUT"
docker push  acrdemo1.azurecr.io/helloworldservice:v1
Write-Output "--------------------------------------------------------------------"
echo "`n"

echo "Verify that repositories has been created representing the container image"
echo "Run command: az acr repository list --name acrdockerdemoeastus --output table"
echo "`n"
echo "OUTPUT"
az acr repository list --name acrdemo1 --output table
Write-Output "--------------------------------------------------------------------"
echo "`n"



