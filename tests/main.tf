# terraform {
#      azurerm = {
#       source  = "hashicorp/azurerm"
#       version = "3.42.0"
#     }
#   }

# provider "azurerm" {
#   features {
#   }
#   client_id       = "00000000-0000-0000-0000-000000000000"
#   client_secret   = "10000000-0000-0000-0000-000000000000"
#   tenant_id       = "10000000-0000-0000-0000-000000000000"
# }

# resource "azurerm_resource_group" "rg" {
#   location = "uksouth"
#   name     = "TestRG-Terram"
#     tags = {
#     "environment" = "dev"
#   }
# }