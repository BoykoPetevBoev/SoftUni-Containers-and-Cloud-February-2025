variable "resource_group_name" {
  type        = string
  description = "The name of the Azure Resource Group"
  default     = "SoftUniSecondExamPrep"
}

variable "resource_group_locaton" {
  type        = string
  description = "The Azure region in which the resource group is created"
  default     = "North Europe"
}

variable "subscription_id" {
  type        = string
  description = "The Azure Subscription ID"
}

variable "service_plan_name" {
  type        = string
  description = "The name of the App Service Plan"
}

variable "linux_web_app_name" {
  type        = string
  description = "The name of the Linux Web App (App Service)"
}

variable "mssql_server_name" {
  type        = string
  description = "The name of the MSSQL server"
}

variable "mssql_admin_login" {
  type        = string
  description = "The administrator username for the MSSQL server"
}

variable "mssql_admin_password" {
  type        = string
  description = "The administrator password for the MSSQL server"
}

variable "mssql_database_name" {
  type        = string
  description = "The name of the MSSQL database"
}

variable "mssql_firewall_rule_name" {
  type        = string
  description = "The name of the firewall rule to apply to the MSSQL server"
}

variable "app_service_source_control_repo_url" {
  type        = string
  description = "The URL of the source control repository for the App Service"
}