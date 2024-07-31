resource "azurerm_resource_group" "example" {
  name     = var.rg_name
  location = var.region
}
resource "azurerm_virtual_network" "main" {
  name                = var.vnet_name
  location            = var.region
  resource_group_name = azurerm_resource_group.example.name
  address_space       = var.address_space
}