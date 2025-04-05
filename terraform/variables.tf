variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
  default     = "rg-jenkins"
}

variable "location" {
  description = "Azure Region"
  type        = string
  default     = "East US"
}

variable "app_service_plan_name" {
  description = "Name of the App Service Plan"
  type        = string
  default     = "dushyant-app-service-plan"
}

variable "app_service_name" {
  description = "Name of the App Service"
  type        = string
  default     = "dushyant-app-service"
}
