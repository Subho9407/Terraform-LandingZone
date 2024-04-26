data "azurerm_resource_group" "datarg" {
  name = "Resource_Group"
}

data "azurerm_network_interface" "datani" {
  for_each            = var.nsga
  name                = each.value.ni
  resource_group_name = data.azurerm_resource_group.datarg.name
}

data "azurerm_network_security_group" "datansg" {
  for_each            = var.nsga
  name                = each.value.nsg
  resource_group_name = data.azurerm_resource_group.datarg.name
}