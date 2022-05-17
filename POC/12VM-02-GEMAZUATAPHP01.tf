## GEMAZUATAPHP01-1 VM

resource "azurerm_network_interface" "nicphp11" {
  name                = "vmphp11-nic"
  location            = var.pr_location
  resource_group_name = var.rg_uat_app1_name
  
  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.snapp1.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "vmphp11" {
  name                = "GEMAZUATAPHP01-1"
  resource_group_name = var.rg_uat_app1_name
  location            = var.pr_location
  size                = "Standard_F4s_v2"
  availability_set_id = azurerm_availability_set.asphp1.id
  proximity_placement_group_id = azurerm_proximity_placement_group.pxmapp1.id

  admin_username      = var.adm_user_name
  admin_password      = var.adm_user_pass
  disable_password_authentication = false
  
  network_interface_ids = [
    azurerm_network_interface.nicphp11.id,
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

##GEMAZUATAPHP01-2 VM

resource "azurerm_network_interface" "nicphp12" {
  name                = "vmphp12-nic"
  location            = var.pr_location
  resource_group_name = var.rg_uat_app1_name
  
  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.snapp1.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "vmphp12" {
  name                = "GEMAZUATAPHP01-2"
  resource_group_name = var.rg_uat_app1_name
  location            = var.pr_location
  size                = "Standard_F4s_v2"
  availability_set_id = azurerm_availability_set.asphp1.id
  proximity_placement_group_id = azurerm_proximity_placement_group.pxmapp1.id

  admin_username      = var.adm_user_name
  admin_password      = var.adm_user_pass
  disable_password_authentication = false
  
  network_interface_ids = [
    azurerm_network_interface.nicphp12.id,
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
