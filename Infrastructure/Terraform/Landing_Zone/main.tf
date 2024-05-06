terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.54.0"
    }
  }
}

provider "azurerm" {
  environment = "usgovernment"
  features {}
}


provider "azurerm" {
 alias           = "connectivity"
  subscription_id = var.connectivity_subscription
  environment                = var.environment
  skip_provider_registration = var.environment == "usgovernment" ? true : false
  features {}
}

provider "azurerm" {
  alias           = "management"
  subscription_id = var .management_subscription
  environment                = var.environment
  skip_provider_registration = var.environment == "usgovernment" ? true : false
  features {}
} 

provider "azurerm" {
  alias           = "identity"
  subscription_id = var.identity_subscription
  environment                = var.environment
  skip_provider_registration = var.environment == "usgovernment" ? true : false
  features {}
} 


