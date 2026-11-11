output "resource_group_name" {
  description = "Navnet på ressursgruppen som ble opprettet."
  value       = azurerm_resource_group.this.name
}

output "location" {
  description = "Regionen ressursgruppen faktisk ligger i."
  value       = azurerm_resource_group.this.location
}

output "name_prefix" {
  description = "Navneprefiks (student_id + project), til gjenbruk for senere ressurser."
  value       = local.name_prefix
}
