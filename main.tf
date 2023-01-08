data "azurerm_resource_group" "this" {
  count = length(var.location) > 0 ? 0 : 1

  name = length(var.name) > 0 ? var.name : replace(join(var.separator, local.names), " ", "")
}

resource "azurerm_resource_group" "this" {
  count = length(var.location) > 0 ? 1 : 0

  name     = length(var.name) > 0 ? var.name : replace(join(var.separator, local.names), " ", "")
  location = var.location
  tags = length(var.tags) > 0 ? (
    var.tags
    ) : (
    { for tag in local.tags : tag.key => tag.value }
  )
}
