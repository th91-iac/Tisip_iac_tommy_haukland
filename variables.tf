variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "rg-tisip-iac-tommy"
}

variable "location" {
  description = "Azure region to deploy resources in"
  type        = string
  default     = "norwayeast"
}

variable "storage_account_name" {
  description = "Globally unique name for the storage account (lowercase letters and numbers only, 3-24 characters)"
  type        = string
  default     = "sttommyhaukland5688"
}

variable "environment" {
  description = "Tag used to mark which environment/exercise this belongs to"
  type        = string
  default     = "oving-modul1"
}
