terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id   = "3f1c0dff-df8e-4bd6-a026-0e4bdba47734"
  tenant_id         = "c587fd9f-2977-422e-81b0-6b6a7d3005d3"
  client_id         = "a872d478-7875-4373-8eff-e01fa34e38af"
  client_secret     = "AjB8Q~E2bluTqRLicgWGdLhkwZUuYRhwWl1xcbcq"
}

resource "azurerm_resource_group" "terraform-test-rg" {
  name     = "terraform-test-rg"
  location = "East US"

  tags = {
    env = "dev"
    test-tag = "first-deployment"
  }
}
