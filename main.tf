resource "azurerm_resource_group" "this" {
  name = length(var.name) > 0 ? (
    var.name
    ) : (
    replace(join(var.separator, local.names), " ", var.space)
  )
  location = var.location

  tags = length(var.tags) > 0 ? (
    var.tags
    ) : (
    { for tag in local.tags : tag.key => tag.value }
  )
}
