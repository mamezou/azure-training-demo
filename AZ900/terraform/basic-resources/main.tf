terraform {
  required_version = ">= 1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

# リソースグループの作成
resource "azurerm_resource_group" "demo" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    Environment = "Demo"
    Training    = "AZ-900"
    Purpose     = "Basic Resources Demo"
  }
}

# ストレージアカウントの作成
resource "azurerm_storage_account" "demo" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.demo.name
  location                 = azurerm_resource_group.demo.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    Environment = "Demo"
    Training    = "AZ-900"
  }
}

# Blobコンテナーの作成
resource "azurerm_storage_container" "demo" {
  name                  = "democontainer"
  storage_account_name  = azurerm_storage_account.demo.name
  container_access_type = "private"
}
