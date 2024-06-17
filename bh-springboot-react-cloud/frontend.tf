resource "azurerm_app_service" "frontend" {
  name                = "example-frontend-app"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  app_service_plan_id = azurerm_app_service_plan.example.id

  site_config {
    linux_fx_version = "DOCKER|your-azure-container-registry.azurecr.io/frontend-app:latest"
  }

  app_settings = {
    WEBSITES_ENABLE_APP_SERVICE_STORAGE = "false"
    WEBSITES_PORT                       = "80"
  }
}


# Make sure to replace placeholders like your-azure-container-registry.azurecr.io, 
# your-service-connection-to-acr, your-service-connection-to-azure, 
# your-backend-app-service, and your-frontend-app-service with actual values specific 
# to your Azure setup.