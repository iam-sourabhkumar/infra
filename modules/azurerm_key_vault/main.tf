resource "azurerm_key_vault" "kv" {
  for_each            = var.key_vaults
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.rg_name
  tenant_id           = data.azurerm_client_config.current.tenant_id
  sku_name            = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    secret_permissions = [
      "Get",
      "List",
      "Set",
      "Delete",
      "Purge",
      "Recover"
    ]
  }
}

resource "azurerm_key_vault_secret" "admin_password" {
  for_each     = var.key_vaults
  name         = each.value.secret_name
  value        = "DevOps@123"
  key_vault_id = azurerm_key_vault.kv[each.key].id
}
