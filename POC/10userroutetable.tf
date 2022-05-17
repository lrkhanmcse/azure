## UDR for App1 Subnet

resource "azurerm_route_table" "udrapp1" {
  name                          = var.udt_app1
  location                      = var.pr_location
  resource_group_name           = var.rg_uat_app1_name
  disable_bgp_route_propagation = false

  route {
    name           = "rt_to_internet"
    address_prefix = "0.0.0.0/0"
    next_hop_type  = "VirtualAppliance"
    next_hop_in_ip_address = "10.121.0.4"
  }

}

resource "azurerm_subnet_route_table_association" "udrsnapp1" {
  subnet_id      = azurerm_subnet.snapp1.id
  route_table_id = azurerm_route_table.udrapp1.id
}

## UDR for App2 Subnet

resource "azurerm_route_table" "udrapp2" {
  name                          = var.udt_app2
  location                      = var.pr_location
  resource_group_name           = var.rg_uat_app2_name
  disable_bgp_route_propagation = false

  route {
    name           = "rt_to_internet"
    address_prefix = "0.0.0.0/0"
    next_hop_type  = "VirtualAppliance"
    next_hop_in_ip_address = "10.121.0.4"
  }

}

resource "azurerm_subnet_route_table_association" "udrsnapp2" {
  subnet_id      = azurerm_subnet.snapp2.id
  route_table_id = azurerm_route_table.udrapp2.id
}

## UDR for db Subnet

resource "azurerm_route_table" "udrdb" {
  name                          = var.udt_db
  location                      = var.pr_location
  resource_group_name           = var.rg_uat_db_name
  disable_bgp_route_propagation = false

  route {
    name           = "rt_to_internet"
    address_prefix = "0.0.0.0/0"
    next_hop_type  = "VirtualAppliance"
    next_hop_in_ip_address = "10.121.0.4"
  }

}

resource "azurerm_subnet_route_table_association" "udrsndb" {
  subnet_id      = azurerm_subnet.sndb.id
  route_table_id = azurerm_route_table.udrdb.id
}

## UDR for AKS Subnet

resource "azurerm_route_table" "udraks" {
  name                          = var.udt_aks
  location                      = var.pr_location
  resource_group_name           = var.rg_uat_appaks_name
  disable_bgp_route_propagation = false

  route {
    name           = "rt_to_internet"
    address_prefix = "0.0.0.0/0"
    next_hop_type  = "VirtualAppliance"
    next_hop_in_ip_address = "10.121.0.4"
  }

}

resource "azurerm_subnet_route_table_association" "udrsnaks" {
  subnet_id      = azurerm_subnet.snaks.id
  route_table_id = azurerm_route_table.udraks.id
}

## UDR for SS Subnet

resource "azurerm_route_table" "udrss" {
  name                          = var.udt_ss
  location                      = var.pr_location
  resource_group_name           = var.rg_hub_ss_name
  disable_bgp_route_propagation = false

  route {
    name           = "rt_to_internet"
    address_prefix = "0.0.0.0/0"
    next_hop_type  = "VirtualAppliance"
    next_hop_in_ip_address = "10.121.0.4"
  }

}

resource "azurerm_subnet_route_table_association" "udrsnss" {
  subnet_id      = azurerm_subnet.snss.id
  route_table_id = azurerm_route_table.udrss.id
}