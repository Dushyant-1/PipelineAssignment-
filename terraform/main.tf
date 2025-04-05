terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "1ecb68ad-b9f1-4f6e-8e63-c0e1d3d46c33" 
}

# Create a Resource Group
resource "azurerm_resource_group" "rg" {
  name     = "rg-jenkins"
  location = "East US"
}

# Create a Windows-based App Service Plan
resource "azurerm_app_service_plan" "app_plan" {
  name                = "dushyant-app-service-plan"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  kind                = "Windows"

  sku {
    tier = "Basic"
    size = "B1"
  }
}

# Create a Windows-based App Service with the latest Python version
resource "azurerm_app_service" "app_service" {
  name                = "webapijenkinslearning"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.app_plan.id

  site_config {
  always_on          = true
  windows_fx_version = "DOTNETCORE|8.0"
}
}
