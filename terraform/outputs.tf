output "resource_group_name" {
  description = "The name of the created resource group"
  value       = azurerm_resource_group.rg.name
}

output "app_service_plan_name" {
  description = "The name of the App Service Plan"
  value       = azurerm_app_service_plan.app_plan.name
}

output "app_service_url" {
  description = "The default URL of the App Service"
  value       = azurerm_app_service.app_service.default_site_hostname
}
