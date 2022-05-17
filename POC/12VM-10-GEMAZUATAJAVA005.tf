## GEMAZUATAJAVA005-1 VM

resource "azurerm_network_interface" "nicjava051" {
  name                = "vmjava051-nic"
  location            = var.pr_location
  resource_group_name = var.rg_uat_app1_name
  
  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.snapp1.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "vmjava051" {
  name                = "GEMAZUATAJAVA005-1"
  resource_group_name = var.rg_uat_app1_name
  location            = var.pr_location
  size                = "Standard_F8s_v2"
  availability_set_id = azurerm_availability_set.as_java05.id
  proximity_placement_group_id = azurerm_proximity_placement_group.pxmapp1.id

  admin_username      = var.adm_user_name
  admin_password      = var.adm_user_pass
  disable_password_authentication = false
  
  network_interface_ids = [
    azurerm_network_interface.nicjava051.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "StandardSSD_LRS"
    disk_size_gb = 512
  }

  source_image_reference {
    publisher = "RedHat"
    offer     = "RHEL"
    sku       = "79-gen2"
    version   = "latest"
  }
}


## GEMAZUATAJAVA005-2 VM

resource "azurerm_network_interface" "nicjava052" {
  name                = "vmjava052-nic"
  location            = var.pr_location
  resource_group_name = var.rg_uat_app1_name
  
  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.snapp1.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "vmjava052" {
  name                = "GEMAZUATAJAVA005-2"
  resource_group_name = var.rg_uat_app1_name
  location            = var.pr_location
  size                = "Standard_F8s_v2"
  availability_set_id = azurerm_availability_set.as_java05.id
  proximity_placement_group_id = azurerm_proximity_placement_group.pxmapp1.id

  admin_username      = var.adm_user_name
  admin_password      = var.adm_user_pass
  disable_password_authentication = false
  
  network_interface_ids = [
    azurerm_network_interface.nicjava052.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "StandardSSD_LRS"
    disk_size_gb = 512
  }

  source_image_reference {
    publisher = "RedHat"
    offer     = "RHEL"
    sku       = "79-gen2"
    version   = "latest"
  }
}
