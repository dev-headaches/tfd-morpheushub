 terraform {
  required_version = ">= 0.13"
  required_providers {
    azurerm = {
      version = "~> 2.92"
      source  = "hashicorp/azurerm"
    }
  }
}
 
 provider "azurerm" {
  environment     = var.ARM_ENVIRONMENT
  tenant_id       = var.ARM_TENANT_ID
  subscription_id = var.ARM_SUBSCRIPTION_ID
  client_id       = var.ARM_CLIENT_ID
  client_secret   = var.ARM_CLIENT_SECRET
  features {}
}