resource "azurerm_resource_group" "rg1" {
  name     = var.rg1_name
  location = var.rg1_location
}

#resource "azurerm_resource_group" "rg2" {
 # name     = var.rg2_name
  #location = var.rg2_location
#}

# resource "azurerm_resource_group" "rg3" {
#   name     = "West-RG01"
#   location = "westus"
# }