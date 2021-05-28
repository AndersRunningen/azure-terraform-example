# azure-terraform-example

# Create Resource Group
az account set --subscription 54ee7485-960c-4b1d-b296-c72b22d4978e

# Create Storage Account
az storage account create -n terraformtesttf -g anders-test -l northeurope --sku Standard_LRS

# Create Storage account Container
az storage container create -n tfstatedevops --account-name anderstest


# Create Service Principal
az ad sp create-for-rbac --name anderstesttf


# Saving Service Principal credentials within GitHub Repository as secrets

Within the GitHub repository to where you are going to be running the terraform from, select settings -> secrets

Add 4 secrets

    AZURE_AD_CLIENT_ID – Will be the service principal ID from above
    AZURE_AD_CLIENT_SECRET – The secret that was created as part of the Azure Service Principal
    AZURE_AD_TENANT_ID – The Azure AD tenant ID to where the service principal was created
    AZURE_SUBSCRIPTION_ID – Subscription ID of where you want to deploy the Terraform

Taken from:
https://github.com/hashicorp/learn-terraform-provision-aks-cluster