output "data" {
  description = "The resource group data."
  value       = length(var.location) > 0 ? one(azurerm_resource_group.this[*]) : one(data.azurerm_resource_group.this[*])
  sensitive   = false
}
