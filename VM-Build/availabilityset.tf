resource "azurerm_availability_set" "east-av-set" {
  name                = "East-AV-Set"
 location              = azurerm_resource_group.rg1.location
 resource_group_name   = azurerm_resource_group.rg1.name
 platform_fault_domain_count = 3
 platform_update_domain_count = 3

  tags = {
    environment = "Production"
  }
}