## GEMAZUATAPHP02-1 VM

resource "azurerm_network_interface" "nicphp21" {
  name                = "vmphp21-nic"
  location            = var.pr_location
  resource_group_name = var.rg_uat_app2_name
  
  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.snapp2.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "vmphp21" {
  name                = "GEMAZUATAPHP02-1"
  resource_group_name = var.rg_uat_app2_name
  location            = var.pr_location
  size                = "Standard_F4s_v2"
  availability_set_id = azurerm_availability_set.asphp2.id
  proximity_placement_group_id = azurerm_proximity_placement_group.pxmapp1.id

  admin_username      = var.adm_user_name
  admin_password      = var.adm_user_pass
  disable_password_authentication = false
  
  network_interface_ids = [
    azurerm_network_interface.nicphp21.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "StandardSSD_LRS"
    disk_size_gb = 128
  }

 
  source_image_reference {
    publisher = "RedHat"
    offer     = "RHEL"
    sku       = "79-gen2"
    version   = "latest"
  }
  
 // source_image_id = azurerm_image.imgrhel.id
}


##GEMAZUATAPHP02-2 VM

resource "azurerm_network_interface" "nicphp22" {
  name                = "vmphp22-nic"
  location            = var.pr_location
  resource_group_name = var.rg_uat_app2_name
  
  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.snapp2.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "vmphp22" {
  name                = "GEMAZUATAPHP02-2"
  resource_group_name = var.rg_uat_app2_name
  location            = var.pr_location
  size                = "Standard_F4s_v2"
  availability_set_id = azurerm_availability_set.asphp2.id
  proximity_placement_group_id = azurerm_proximity_placement_group.pxmapp1.id

  admin_username      = var.adm_user_name
  admin_password      = var.adm_user_pass
  disable_password_authentication = false
  
  network_interface_ids = [
    azurerm_network_interface.nicphp22.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "StandardSSD_LRS"
    disk_size_gb = 128
  }

  source_image_reference {
    publisher = "RedHat"
    offer     = "RHEL"
    sku       = "79-gen2"
    version   = "latest"
  }
}
