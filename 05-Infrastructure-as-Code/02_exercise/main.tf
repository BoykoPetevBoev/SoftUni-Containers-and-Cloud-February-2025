terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.24.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "c44447bb-c641-4967-af6c-b2255673b7a6"
}

resource "random_integer" "ri" {
  min = 1
  max = 50000
}

resource "azurerm_resource_group" "arg" {
  name     = "ContactBookRG${random_integer.ri.result}"
  location = "Italy North"
}

resource "azurerm_service_plan" "asp" {
  name                = "ContactBookSP${random_integer.ri.result}"
  resource_group_name = azurerm_resource_group.arg.name
  location            = azurerm_resource_group.arg.location
  os_type             = "Linux"
  sku_name            = "F1"
}

resource "azurerm_linux_web_app" "alwa" {
  name                = "ContactBookApp${random_integer.ri.result}"
  resource_group_name = azurerm_resource_group.arg.name
  location            = azurerm_resource_group.arg.location
  service_plan_id     = azurerm_service_plan.asp.id

  site_config {
    application_stack {
      node_version = "16-lts"
    }
    always_on = false
  }
}

resource "azurerm_app_service_source_control" "aassc" {
  app_id  = azurerm_linux_web_app.alwa.id
  repo_url = "https://github.com/nakov/ContactBook"
  branch   = "master"
  use_manual_integration = true
}
