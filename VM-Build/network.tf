resource "azurerm_virtual_network" "east_vNet01" {
  name                = var.batch4_vNet01_name
  address_space       = var.vnet01_address
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
}

resource "azurerm_subnet" "east_vNet01_Inter_sub01" {
  name                 = var.vnet01_internal_subnet01
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.east_vNet01.name
  address_prefixes     = var.vnet01_int_sub01_address

}

#resource "azurerm_virtual_network" "central_vNet01" {
 #name                = "central-vNet01"
  #address_space       = ["172.16.0.0/16"]
  #location            = azurerm_resource_group.rg2.location
  #resource_group_name = azurerm_resource_group.rg2.name
#}

#resource "azurerm_subnet" "central_Inter_sub01" {
 #name                 = "Central-Subnet01"
  #resource_group_name  = azurerm_resource_group.rg2.name
  #virtual_network_name = azurerm_virtual_network.central_vNet01.name
  #address_prefixes     = ["172.16.1.0/24"]

#}

# resource "azurerm_virtual_network" "west_vNet01" {
#   name                = "West-vNet01"
#   address_space       = ["192.168.0.0/16"]
#   location            = azurerm_resource_group.rg3.location
#   resource_group_name = azurerm_resource_group.rg3.name
# }

# resource "azurerm_subnet" "west_Inter_sub01" {
#   name                 = "West-Subnet01"
#   resource_group_name  = azurerm_resource_group.rg3.name
#   virtual_network_name = azurerm_virtual_network.west_vNet01.name
#   address_prefixes     = ["192.168.1.0/24"]

# }