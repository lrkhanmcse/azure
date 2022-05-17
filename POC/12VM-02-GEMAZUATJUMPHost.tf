## GEMAZUATAPHP01-1 VM

resource "azurerm_network_interface" "nicjh1" {
  name                = "vmjh1-nic"
  location            = var.pr_location
  resource_group_name = var.rg_uat_appaks_name
  
  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.snaks.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "vmjh1" {
  name                = "GEMAZUATJUMPHOST"
  resource_group_name = var.rg_uat_appaks_name
  location            = var.pr_location
  size                = "Standard_D2s_v4"
  availability_set_id = azurerm_availability_set.as_jh.id
  proximity_placement_group_id = azurerm_proximity_placement_group.pxmapp1.id

  admin_username      = var.adm_user_name
  admin_password      = var.adm_user_pass
  disable_password_authentication = false
  
  network_interface_ids = [
    azurerm_network_interface.nicjh1.id
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "StandardSSD_LRS"
    #disk_size_gb = 128
  }

 
  source_image_reference {
    publisher = "canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts-gen2"
    version   = "latest"
  }
  
 // source_image_id = azurerm_image.imgrhel.id
}

