
# Test  222 Create a virtual network within the resource group

resource "azurerm_virtual_network" "vnet" {
  count               = length(var.cidr_range)
  name                = format("%s%s", "vnet-", (count.index + 1))
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  address_space       = [var.cidr_range[count.index]]
}

resource "azurerm_subnet" "subnet" {

  for_each             = var.subnet_map
  name                 = each.key
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet[0].name
  address_prefixes     = [each.value]
}

resource "azurerm_subnet" "subnet2" {

    for_each                = var.subnet_map1
    name                    = each.key
    resource_group_name     = azurerm_resource_group.rg.name
    virtual_network_name    = azurerm_virtual_network.vnet[1].name
    address_prefixes        = [each.value]
}

