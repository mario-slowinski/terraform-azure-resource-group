output "data" {
  description = "The resource group data."
  value       = azurerm_resource_group.this
  sensitive   = false
}
