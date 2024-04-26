resource "azurerm_network_security_group" "main" {
  name                = var.nsg
  location            = data.azurerm_resource_group.datarg.location
  resource_group_name = data.azurerm_resource_group.datarg.name

  security_rule {
      name                       = "rule"
      priority                   = "100"
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = "*"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    }
  }
  