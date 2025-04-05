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

resource "azurerm_resource_group" "first_exercise_rg" {
    name = "FirstExerciseRg"
    location = "Italy North"
}