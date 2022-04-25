# for morpheus
/*
provider "azurerm" {
  environment     = "usgovernment"
  tenant_id       = var.hubtenantid
  subscription_id = var.hubsubscriptionID
  client_id       = var.hubclientid
  client_secret   = var.hubclientsecret
  features {}
}
*/

provider "azurerm" {
  environment     = var.ARM_ENVIRONMENT
  tenant_id       = var.ARM_TENANT_ID
  subscription_id = var.ARM_SUBSCRIPTION_ID
  client_id       = var.ARM_CLIENT_ID
  client_secret   = var.ARM_CLIENT_SECRET
  features {}
}