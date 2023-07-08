resource "azurerm_public_ip" "east-vm01-pip" {
  name                = var.test-vm01-pip-Name
  resource_group_name = azurerm_resource_group.rg1.name
  location            = azurerm_resource_group.rg1.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
    Bussiness   = "Batch4-POC"
  }
}

# resource "azurerm_public_ip" "east-vm02-pip" {
#   name                = "east-web-VM02-pip"
#   resource_group_name = azurerm_resource_group.rg1.name
#   location            = azurerm_resource_group.rg1.location
#   allocation_method   = "Static"

#   tags = {
#     environment = "Production"
#     Bussiness   = "Batch4-POC"
#   }
# }

#resource "azurerm_public_ip" "central-vm10-pip" {
 # name                = "central-web-VM10-pip"
  #resource_group_name = azurerm_resource_group.rg2.name
  #location            = azurerm_resource_group.rg2.location
  #allocation_method   = "Static"

  #tags = {
   # environment = "Production"
    #Bussiness   = "Batch4-POC"
  #}
#}

# resource "azurerm_public_ip" "West-vm10-pip" {
#   name                = "West-web-VM10-pip"
#   resource_group_name = azurerm_resource_group.rg3.name
#   location            = azurerm_resource_group.rg3.location
#   allocation_method   = "Static"

#   tags = {
#     environment = "Production"
#     Bussiness   = "Batch4-POC"
#   }
# }