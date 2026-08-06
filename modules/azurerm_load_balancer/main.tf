resource "azurerm_lb" "lb" {
  for_each            = var.load_balancers
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.rg_name
  sku                 = "Standard"

  frontend_ip_configuration {
    name                          = "frontend-ip"
    subnet_id                     = data.azurerm_subnet.subnet[each.key].id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_lb_backend_address_pool" "pool" {
  for_each        = var.load_balancers
  name            = "backend-pool"
  loadbalancer_id = azurerm_lb.lb[each.key].id
}
