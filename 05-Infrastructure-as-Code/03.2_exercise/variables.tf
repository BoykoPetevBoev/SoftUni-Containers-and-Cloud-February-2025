variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
  default     = "TaskBoardRG"
}

variable "resource_group_locaton" {
  type        = string
  description = "The location of the resource group"
}

variable "app_service_plan_name" {
  type        = string
  description = "The name of the service plan"
}

variable "app_service_name" {
  type        = string
  description = "The name of the app"
}

variable "sql_service_name" {
  type        = string
  description = "The name of the sql server"
}

variable "sql_database_name" {
  type        = string
  description = "The name of the datababse"
}

variable "sql_admin_login" {
  type        = string
  description = "The sql user"
}

variable "sql_admin_password" {
  type        = string
  description = "The sql password"
}

variable "firewall_rule_name" {
  type        = string
  description = "The name of firewall"
}

variable "repo_URL" {
  type        = string
  description = "The location of the GitHub repo"
}

