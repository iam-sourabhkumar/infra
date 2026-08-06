output "backend_address_pool_ids" {
  value = { for k, v in azurerm_application_gateway.appgw : k => tolist(v.backend_address_pool)[0].id }
}
