resource "azurerm_network_security_group" "east_nsg" {
  name                = "east-nsg"
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name

  security_rule {
    name                       = "Allow_All"
    priority                   = 500
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = {
    environment = "Production"
  }
}

#resource "azurerm_network_security_group" "central_nsg" {
 # name                = "central-nsg"
  #location            = azurerm_resource_group.rg2.location
  #resource_group_name = azurerm_resource_group.rg2.name

  #security_rule {
   # name                       = "Allow_All"
    #priority                   = 500
    #direction                  = "Inbound"
    #access                     = "Allow"
    #protocol                   = "Tcp"
    #source_port_range          = "*"
    #destination_port_range     = "*"
    #source_address_prefix      = "*"
    #destination_address_prefix = "*"
  #}

  #tags = {
   # environment = "Production"
  #}
#}


resource "azurerm_subnet_network_security_group_association" "east_nsg" {
  subnet_id                 = azurerm_subnet.east_vNet01_Inter_sub01.id
  network_security_group_id = azurerm_network_security_group.east_nsg.id
}

#resource "azurerm_subnet_network_security_group_association" "central_nsg" {
 # subnet_id                 = azurerm_subnet.central_Inter_sub01.id
  #network_security_group_id = azurerm_network_security_group.central_nsg.id
#}