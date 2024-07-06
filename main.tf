provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_app_service_plan" "example" {
  name                = "example-appserviceplan"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku {
    tier = "Standard"
    size = "S1"
  }
}


# Make sure to replace placeholders like your-azure-container-registry.azurecr.io, 
# your-service-connection-to-acr, your-service-connection-to-azure, 
# your-backend-app-service, and your-frontend-app-service with actual values specific 
# to your Azure setup.