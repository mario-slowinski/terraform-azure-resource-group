resource "azurerm_resource_group" "this" {
  name = length(var.name) > 0 ? (
    var.name
    ) : (
    replace(join(var.separator, local.names), " ", var.space)
  )
  location = var.location

  tags = coalesce(var.tags, local.tags)
}
