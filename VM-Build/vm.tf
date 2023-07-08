resource "azurerm_linux_virtual_machine" "East-Test-VM01" {
  name                            = var.Test-VM01-Name
  location              = azurerm_resource_group.rg1.location
  resource_group_name   = azurerm_resource_group.rg1.name
  network_interface_ids           = [azurerm_network_interface.east-VM01-NIC.id]
  zone = 1
  size                            = "Standard_B1s"
  admin_username                  = "azadmin"
  admin_password                  = "Password@123"
  disable_password_authentication = false
 
  os_disk {
    name                 = "east-web-VM01-myOsDisk"
    caching              = "ReadWrite"
    storage_account_type = "Premium_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
    
  }
}

# resource "azurerm_linux_virtual_machine" "East-Test-VM02" {
#   name                            = "east-web-vm02"
#   location              = azurerm_resource_group.rg1.location
#   resource_group_name   = azurerm_resource_group.rg1.name
#   network_interface_ids           = [azurerm_network_interface.east-VM02-NIC.id]
#   zone = [2]
#   size                            = "Standard_B1s"
#   admin_username                  = "azadmin"
#   admin_password                  = "Password@123"
#   disable_password_authentication = false
#   custom_data                     = filebase64("nginx.sh")
#   os_disk {
#     name                 = "east-web-VM02-myOsDisk"
#     caching              = "ReadWrite"
#     storage_account_type = "Premium_LRS"
#   }

#   source_image_reference {
#     publisher = "Canonical"
#     offer     = "UbuntuServer"
#     sku       = "18.04-LTS"
#     version   = "latest"
#   }
# }

#resource "azurerm_linux_virtual_machine" "central-Test-VM10" {
 # name                            = "central-web-vm02"
  #location              = azurerm_resource_group.rg2.location
  #resource_group_name   = azurerm_resource_group.rg2.name
  #network_interface_ids           = [azurerm_network_interface.Central-VM10-NIC.id]
  #zone = 2
  #size                            = "Standard_B1s"
  #admin_username                  = "azadmin"
  #admin_password                  = "Password@123"
  #disable_password_authentication = false
  #custom_data                     = filebase64("nginx.sh")
  #os_disk {
   # name                 = "east-web-VM02-myOsDisk"
    #caching              = "ReadWrite"
    #storage_account_type = "Premium_LRS"
  #}

  #source_image_reference {
   # publisher = "Canonical"
    #offer     = "UbuntuServer"
    #sku       = "18.04-LTS"
    #version   = "latest"
  #}
#}


# resource "azurerm_linux_virtual_machine" "West-Test-VM10" {
#   name                            = "West-web-vm02"
#   location              = azurerm_resource_group.rg3.location
#   resource_group_name   = azurerm_resource_group.rg3.name
#   network_interface_ids           = [azurerm_network_interface.west-VM03-NIC.id]
#   #availability_set_id = azurerm_availability_set.east-av-set.id
#   size                            = "Standard_B1s"
#   admin_username                  = "azadmin"
#   admin_password                  = "Password@123"
#   disable_password_authentication = false
#   custom_data                     = filebase64("nginx.sh")
#   os_disk {
#     name                 = "east-web-VM02-myOsDisk"
#     caching              = "ReadWrite"
#     storage_account_type = "Premium_LRS"
#   }

#   source_image_reference {
#     publisher = "Canonical"
#     offer     = "UbuntuServer"
#     sku       = "18.04-LTS"
#     version   = "latest"
#   }
# }