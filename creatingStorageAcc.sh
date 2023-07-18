#!/bin/bash

$RESOURCE_GROUP_NAME="tfstate"
$STORAGE_ACCOUNT_NAME="tfstaat$$RANDOM"
$CONTAINER_NAME="tfstate"

# Create resource group
az group create --name "$RESOURCE_GROUP_NAME" --location "westeurope"

# Create storage account
az storage account create --resource-group "$RESOURCE_GROUP_NAME" --name "$STORAGE_ACCOUNT_NAME" --sku Standard_LRS --encryption-services blob

# Create blob container
az storage container create --name "$CONTAINER_NAME" --account-name "$STORAGE_ACCOUNT_NAME"

$env:ARM_CLIENT_ID="5a766b1b-b90b-49db-a645-c3d968bf3a65"
$env:ARM_SUBSCRIPTION_ID="ef80a7c8-e662-4d93-8648-c458911e6f5f" 
$env:ARM_TENANT_ID="ef80a7c8-e662-4d93-8648-c458911e6f5f"
$env:ARM_CLIENT_SECRET="eG88Q~3rvdORP7BV2siAefe5lfhG.Kp_WUMy4bg."