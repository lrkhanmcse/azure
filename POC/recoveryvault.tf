resource "azurerm_recovery_services_vault" "rsv1" {
  name                = var.rsv_name
  location            = var.pr_location
  resource_group_name = var.rg_hub_ss_name
  sku                 = "Standard"

  soft_delete_enabled = true
  storage_mode_type = "LocallyRedundant"
}