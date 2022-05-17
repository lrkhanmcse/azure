## GEMAZUATDB01 VM

resource "azurerm_network_interface" "nicdb1" {
  name                = "vmdb1-nic"
  location            = var.pr_location
  resource_group_name = var.rg_uat_db_name
  
  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.sndb.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "vmdb1" {
  name                = "GEMAZUATDB01"
  resource_group_name = var.rg_uat_db_name
  location            = var.pr_location
  size                = "Standard_F16s_v2"
  availability_set_id = azurerm_availability_set.asdb.id
  proximity_placement_group_id = azurerm_proximity_placement_group.pxmapp1.id

  admin_username      = var.adm_user_name
  admin_password      = var.adm_user_pass
  disable_password_authentication = false
  
  network_interface_ids = [
    azurerm_network_interface.nicdb1.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "StandardSSD_LRS"
    //disk_size_gb = 128
  }

  // source_image_id = azurerm_image.imgrhel.id
  source_image_reference {
    publisher = "RedHat"
    offer     = "RHEL"
    sku       = "79-gen2"
    version   = "latest"
  }
}

resource "azurerm_managed_disk" "adddb1" {
  name                 = "vmdb1_data_disk1"
  location             = var.pr_location
  resource_group_name  = var.rg_uat_db_name
  storage_account_type = "Premium_LRS"
  create_option        = "Empty"
  disk_size_gb         = 512
}

resource "azurerm_virtual_machine_data_disk_attachment" "vmdb1atch"{
  managed_disk_id = azurerm_managed_disk.adddb1.id
  virtual_machine_id = azurerm_linux_virtual_machine.vmdb1.id
  lun = "10"
  caching = "ReadWrite"
}

resource "azurerm_managed_disk" "dddb12" {
  name                 = "vmdb1_data_disk12"
  location             = var.pr_location
  resource_group_name  = var.rg_uat_db_name
  storage_account_type = "Premium_LRS"
  create_option        = "Empty"
  disk_size_gb         = 1324
}

resource "azurerm_virtual_machine_data_disk_attachment" "dddb12atch"{
  managed_disk_id = azurerm_managed_disk.dddb12.id
  virtual_machine_id = azurerm_linux_virtual_machine.vmdb1.id
  lun = "20"
  caching = "ReadWrite"
}

/*resource "azurerm_managed_disk" "dddb121" {
  name                 = "vmdb1_data_disk121"
  location             = var.pr_location
  resource_group_name  = var.rg_uat_db_name
  storage_account_type = "Premium_LRS"
  create_option        = "Empty"
  disk_size_gb         = 300
}

resource "azurerm_virtual_machine_data_disk_attachment" "dddb121atch"{
  managed_disk_id = azurerm_managed_disk.dddb121.id
  virtual_machine_id = azurerm_linux_virtual_machine.vmdb1.id
  lun = "50"
  caching = "ReadWrite"
}*/

resource "azurerm_managed_disk" "ddddb13" {
  name                 = "vmdb1_data_disk3"
  location             = var.pr_location
  resource_group_name  = var.rg_uat_db_name
  storage_account_type = "Premium_LRS"
  create_option        = "Empty"
  disk_size_gb         = 20
}

resource "azurerm_virtual_machine_data_disk_attachment" "dddb13atch"{
  managed_disk_id = azurerm_managed_disk.ddddb13.id
  virtual_machine_id = azurerm_linux_virtual_machine.vmdb1.id
  lun = "30"
  caching = "ReadWrite"
}

resource "azurerm_managed_disk" "dddb14" {
  name                 = "vmdb1_data_disk4"
  location             = var.pr_location
  resource_group_name  = var.rg_uat_db_name
  storage_account_type = "Premium_LRS"
  create_option        = "Empty"
  disk_size_gb         = 100
}

resource "azurerm_virtual_machine_data_disk_attachment" "dddb14atch"{
  managed_disk_id = azurerm_managed_disk.dddb14.id
  virtual_machine_id = azurerm_linux_virtual_machine.vmdb1.id
  lun = "40"
  caching = "ReadWrite"
}


##GEMAZUATDB02 VM

resource "azurerm_network_interface" "nicdb2" {
  name                = "vmdb2-nic"
  location            = var.pr_location
  resource_group_name = var.rg_uat_db_name
  
  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.sndb.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "vmdb2" {
  name                = "GEMAZUATDB02"
  resource_group_name = var.rg_uat_db_name
  location            = var.pr_location
  size                = "Standard_F16s_v2"
  availability_set_id = azurerm_availability_set.asdb.id
  proximity_placement_group_id = azurerm_proximity_placement_group.pxmapp1.id

  admin_username      = var.adm_user_name
  admin_password      = var.adm_user_pass
  disable_password_authentication = false
  
  network_interface_ids = [
    azurerm_network_interface.nicdb2.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "StandardSSD_LRS"
    //disk_size_gb = 128
  }

  // source_image_id = azurerm_image.imgrhel.id
  source_image_reference {
    publisher = "RedHat"
    offer     = "RHEL"
    sku       = "79-gen2"
    version   = "latest"
  }
}

resource "azurerm_managed_disk" "adddb2" {
  name                 = "vmdb1_data_disk2"
  location             = var.pr_location
  resource_group_name  = var.rg_uat_db_name
  storage_account_type = "Premium_LRS"
  create_option        = "Empty"
  disk_size_gb         = 512
}

resource "azurerm_virtual_machine_data_disk_attachment" "vmdb2atch"{
  managed_disk_id = azurerm_managed_disk.adddb2.id
  virtual_machine_id = azurerm_linux_virtual_machine.vmdb2.id
  lun = "10"
  caching = "ReadWrite"
}

resource "azurerm_managed_disk" "dddb22" {
  name                 = "vmdb2_data_disk2"
  location             = var.pr_location
  resource_group_name  = var.rg_uat_db_name
  storage_account_type = "Premium_LRS"
  create_option        = "Empty"
  disk_size_gb         = 1324
}

resource "azurerm_virtual_machine_data_disk_attachment" "dddb22atch"{
  managed_disk_id = azurerm_managed_disk.dddb22.id
  virtual_machine_id = azurerm_linux_virtual_machine.vmdb2.id
  lun = "20"
  caching = "ReadWrite"
}

/*resource "azurerm_managed_disk" "dddb221" {
  name                 = "vmdb2_data_disk21"
  location             = var.pr_location
  resource_group_name  = var.rg_uat_db_name
  storage_account_type = "Premium_LRS"
  create_option        = "Empty"
  disk_size_gb         = 300
}

resource "azurerm_virtual_machine_data_disk_attachment" "dddb221atch"{
  managed_disk_id = azurerm_managed_disk.dddb221.id
  virtual_machine_id = azurerm_linux_virtual_machine.vmdb2.id
  lun = "50"
  caching = "ReadWrite"
}
*/
resource "azurerm_managed_disk" "ddddb23" {
  name                 = "vmdb2_data_disk3"
  location             = var.pr_location
  resource_group_name  = var.rg_uat_db_name
  storage_account_type = "Premium_LRS"
  create_option        = "Empty"
  disk_size_gb         = 20
}

resource "azurerm_virtual_machine_data_disk_attachment" "dddb23atch"{
  managed_disk_id = azurerm_managed_disk.ddddb23.id
  virtual_machine_id = azurerm_linux_virtual_machine.vmdb2.id
  lun = "30"
  caching = "ReadWrite"
}

resource "azurerm_managed_disk" "dddb24" {
  name                 = "vmdb2_data_disk4"
  location             = var.pr_location
  resource_group_name  = var.rg_uat_db_name
  storage_account_type = "Premium_LRS"
  create_option        = "Empty"
  disk_size_gb         = 100
}

resource "azurerm_virtual_machine_data_disk_attachment" "dddb24atch"{
  managed_disk_id = azurerm_managed_disk.dddb24.id
  virtual_machine_id = azurerm_linux_virtual_machine.vmdb2.id
  lun = "40"
  caching = "ReadWrite"
}


##GEMAZUATDB03 VM

resource "azurerm_network_interface" "nicdb3" {
  name                = "vmdb3-nic"
  location            = var.pr_location
  resource_group_name = var.rg_uat_db_name
  
  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.sndb.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "vmdb3" {
  name                = "GEMAZUATDB03"
  resource_group_name = var.rg_uat_db_name
  location            = var.pr_location
  size                = "Standard_F16s_v2"
  availability_set_id = azurerm_availability_set.asdb.id
  proximity_placement_group_id = azurerm_proximity_placement_group.pxmapp1.id

  admin_username      = var.adm_user_name
  admin_password      = var.adm_user_pass
  disable_password_authentication = false
  
  network_interface_ids = [
    azurerm_network_interface.nicdb3.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "StandardSSD_LRS"
    //disk_size_gb = 128
  }

  // source_image_id = azurerm_image.imgrhel.id
  source_image_reference {
    publisher = "RedHat"
    offer     = "RHEL"
    sku       = "79-gen2"
    version   = "latest"
  }
}

resource "azurerm_managed_disk" "dddb31" {
  name                 = "vmdb3_data_disk1"
  location             = var.pr_location
  resource_group_name  = var.rg_uat_db_name
  storage_account_type = "Premium_LRS"
  create_option        = "Empty"
  disk_size_gb         = 512
}

resource "azurerm_virtual_machine_data_disk_attachment" "dddb31atch"{
  managed_disk_id = azurerm_managed_disk.dddb31.id
  virtual_machine_id = azurerm_linux_virtual_machine.vmdb3.id
  lun = "10"
  caching = "ReadWrite"
}

resource "azurerm_managed_disk" "dddb32" {
  name                 = "vmdb3_data_disk2"
  location             = var.pr_location
  resource_group_name  = var.rg_uat_db_name
  storage_account_type = "Premium_LRS"
  create_option        = "Empty"
  disk_size_gb         = 1324
}

resource "azurerm_virtual_machine_data_disk_attachment" "dddb32atch"{
  managed_disk_id = azurerm_managed_disk.dddb32.id
  virtual_machine_id = azurerm_linux_virtual_machine.vmdb3.id
  lun = "20"
  caching = "ReadWrite"
}

/*resource "azurerm_managed_disk" "dddb321" {
  name                 = "vmdb3_data_disk21"
  location             = var.pr_location
  resource_group_name  = var.rg_uat_db_name
  storage_account_type = "Premium_LRS"
  create_option        = "Empty"
  disk_size_gb         = 300
}

resource "azurerm_virtual_machine_data_disk_attachment" "dddb321atch"{
  managed_disk_id = azurerm_managed_disk.dddb321.id
  virtual_machine_id = azurerm_linux_virtual_machine.vmdb3.id
  lun = "50"
  caching = "ReadWrite"
}*/

resource "azurerm_managed_disk" "ddddb33" {
  name                 = "vmdb3_data_disk3"
  location             = var.pr_location
  resource_group_name  = var.rg_uat_db_name
  storage_account_type = "Premium_LRS"
  create_option        = "Empty"
  disk_size_gb         = 20
}

resource "azurerm_virtual_machine_data_disk_attachment" "dddb33atch"{
  managed_disk_id = azurerm_managed_disk.ddddb33.id
  virtual_machine_id = azurerm_linux_virtual_machine.vmdb3.id
  lun = "30"
  caching = "ReadWrite"
}

resource "azurerm_managed_disk" "dddb34" {
  name                 = "vmdb3_data_disk4"
  location             = var.pr_location
  resource_group_name  = var.rg_uat_db_name
  storage_account_type = "Premium_LRS"
  create_option        = "Empty"
  disk_size_gb         = 100
}

resource "azurerm_virtual_machine_data_disk_attachment" "dddb34atch"{
  managed_disk_id = azurerm_managed_disk.dddb34.id
  virtual_machine_id = azurerm_linux_virtual_machine.vmdb3.id
  lun = "40"
  caching = "ReadWrite"
}
