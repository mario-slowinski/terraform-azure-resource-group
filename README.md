azurerm-resource-group
======================

Terraform [Azure Resource Group](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/manage-resource-groups-portal).

If `var.location` is:

* **set** - create resource
* **not set** - read existing resource data

Required providers
------------------

* [hashicorp/azurerm](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)

Variables
--------------

* `variables.tf`
  * `separator`: Single character to separate segments in object's name.
  * `name`: The name of the resource group. Generated from tags if not set.
  * **`location`**: The Azure Region where the Resource Group should exist.
  * `tags_keys`: The list of tags keys.
  * `tags_keys`: The list of tags values.
  * `names_keys`: The list of names keys to be used for name generation.

Outputs
--------------

* `data`: The resource group data.

Dependencies
------------

*No* *dependencies*

Examples
--------

* `main.tf`

  ```terraform
  module "azurerm_resource_group" {
    sources = "github.com/mario-slowinski/terraform-azurerm-resource-group"
  }
  ```

License
-------

[GPL-3.0](https://www.gnu.org/licenses/gpl-3.0.html)

Author Information
------------------

[mario.slowinski@gmail.com](mailto:mario.slowinski@gmail.com)