resource "azurerm_network_interface" "east-VM01-NIC" {
  name                = var.Test-VM01-NIC01-Name
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = azurerm_subnet.east_vNet01_Inter_sub01.id
    private_ip_address_allocation = "Dynamic"
   # public_ip_address_id          = azurerm_public_ip.east-vm01-pip.id
  }
  depends_on = [azurerm_public_ip.east-vm01-pip]
}

# resource "azurerm_network_interface" "east-VM02-NIC" {
#   name                = "east-VM02-NIC"
#   location            = azurerm_resource_group.rg1.location
#   resource_group_name = azurerm_resource_group.rg1.name

#   ip_configuration {
#     name                          = "testconfiguration2"
#     subnet_id                     = azurerm_subnet.east_vNet01_Inter_sub01.id
#     private_ip_address_allocation = "Dynamic"
#     public_ip_address_id          = azurerm_public_ip.east-vm02-pip.id
#   }
#   depends_on = [azurerm_public_ip.east-vm02-pip]
# }

#resource "azurerm_network_interface" "Central-VM10-NIC" {
 # name                = "central-web-vm10-nic"
  #location            = azurerm_resource_group.rg2.location
  #resource_group_name = azurerm_resource_group.rg2.name

  #ip_configuration {
   # name                          = "testconfiguration10"
    #subnet_id                     = azurerm_subnet.central_Inter_sub01.id
    #private_ip_address_allocation = "Dynamic"
  #  public_ip_address_id          = azurerm_public_ip.central-vm10-pip.id
  #}
  #depends_on = [azurerm_public_ip.central-vm10-pip]
#}

# resource "azurerm_network_interface" "west-VM03-NIC" {
#   name                = "west-web-vm03-nic"
#   location            = azurerm_resource_group.rg3.location
#   resource_group_name = azurerm_resource_group.rg3.name

#   ip_configuration {
#     name                          = "testconfiguration20"
#     subnet_id                     = azurerm_subnet.west_Inter_sub01.id
#     private_ip_address_allocation = "Dynamic"
#     public_ip_address_id          = azurerm_public_ip.West-vm10-pip.id
#   }
#   depends_on = [azurerm_public_ip.West-vm10-pip]
# }