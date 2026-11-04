variable "name_prefix" {
  description = "Navneprefiks for ressursene i modulen"
  type        = string
}

variable "location" {
  description = "Azure-region for ressursene"
  type        = string
}

variable "resource_group_name" {
  description = "Ressursgruppen nettverket skal ligge i"
  type        = string
}
