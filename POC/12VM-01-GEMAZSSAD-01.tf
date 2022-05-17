resource "azurerm_network_interface" "nicad01" {
  name                = "vmad01-nic"
  location            = var.pr_location
  resource_group_name = var.rg_hub_ss_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.snss.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "vmad01" {
  name                = "GEMAZUATSSAD01"
  resource_group_name = var.rg_hub_ss_name
  location            = var.pr_location
  size                = "Standard_D2ds_v4"
  admin_username      = var.adm_user_name
  admin_password      = var.adm_user_pass
  
  network_interface_ids = [
    azurerm_network_interface.nicad01.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "StandardSSD_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2022-datacenter-azure-edition"
    version   = "latest"
  }
}