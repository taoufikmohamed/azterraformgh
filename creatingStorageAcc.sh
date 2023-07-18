//Azure CLI/Cloud shell to create Storage account for storing tfstate (will not be removed by terraform when you apply terraform destroy)
#!/bin/bash

$RESOURCE_GROUP_NAME="example name tfstate"
$STORAGE_ACCOUNT_NAME="example name tfstaat"
$CONTAINER_NAME="example name tfstate"

# Create resource group
az group create --name "$RESOURCE_GROUP_NAME" --location "westeurope"

# Create storage account
az storage account create --resource-group "$RESOURCE_GROUP_NAME" --name "$STORAGE_ACCOUNT_NAME" --sku Standard_LRS --encryption-services blob

# Create blob container
az storage container create --name "$CONTAINER_NAME" --account-name "$STORAGE_ACCOUNT_NAME"

