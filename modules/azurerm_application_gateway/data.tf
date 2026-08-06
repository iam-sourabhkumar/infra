data "azurerm_subnet" "subnet" {
  for_each             = var.app_gateways
  name                 = each.value.subnet_name
  virtual_network_name = each.value.vnet_name
  resource_group_name  = each.value.rg_name
}

data "azurerm_public_ip" "public_ip" {
  for_each            = var.app_gateways
  name                = each.value.public_ip_name
  resource_group_name = each.value.rg_name
}
