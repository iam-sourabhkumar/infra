output "nic_ids" {
  value = { for k, v in azurerm_network_interface.nic : k => v.id }
}
output "nic_ip_configurations" {
  value = { for k, v in azurerm_network_interface.nic : k => v.ip_configuration[0].name }
}
