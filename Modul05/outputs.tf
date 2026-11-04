output "resource_group_name" {
  description = "Navnet på ressursgruppen som ble opprettet"
  value       = azurerm_resource_group.rg.name
}

output "subnet_id" {
  value = module.network.subnet_id
}
