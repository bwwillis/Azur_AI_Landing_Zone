terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"

    }
   
  }
}

provider "azurerm" {
  features {}
  subscription_id = local.ai_subscription
  environment                = var.environment
  skip_provider_registration = var.environment == "usgovernment" ? true : false
}

