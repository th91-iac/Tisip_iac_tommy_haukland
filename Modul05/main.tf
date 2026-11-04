terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
  # subscription_id hentes fra ARM_SUBSCRIPTION_ID
}

locals {
  # Ett felles navnemønster som alle ressursnavn bygges fra
  name_prefix = "${var.kortnavn}-${var.project}"
}

resource "azurerm_resource_group" "rg" {
  name     = "${local.name_prefix}-rg"
  location = var.location

  tags = {
    student = var.kortnavn
    course  = "iac"
  }
}

module "network" {
  source              = "./modules/network"
  name_prefix         = local.name_prefix
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
}
