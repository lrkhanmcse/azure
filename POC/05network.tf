## Hub Network

resource "azurerm_virtual_network" "vnethb"{
    name = var.vnet_hub_name
    location = var.pr_location
    resource_group_name = var.rg_net_name
    address_space = var.vnet_hub_address_space
}


## UAT Network

resource "azurerm_virtual_network" "vnetuat"{
    name = var.vnet_uat_name
    location = var.pr_location
    resource_group_name = var.rg_net_name
    address_space = var.vnet_uat_address_space
}


## Hub Subnets

resource "azurerm_subnet" "snextfw"{
    name = var.sn_hub_extfw_name
    resource_group_name = var.rg_net_name
    virtual_network_name = var.vnet_hub_name
    address_prefixes = var.sn_hub_extfw_address_prefix
    enforce_private_link_endpoint_network_policies = true
}

resource "azurerm_subnet" "snappgw"{
    name = var.sn_hub_appgw_name
    resource_group_name = var.rg_net_name
    virtual_network_name = var.vnet_hub_name
    address_prefixes = var.sn_hub_appgw_address_prefix
    enforce_private_link_endpoint_network_policies = true
}

resource "azurerm_subnet" "snvpngw"{
    name = var.sn_hub_vpngw_name
    resource_group_name = var.rg_net_name
    virtual_network_name = var.vnet_hub_name
    address_prefixes = var.sn_hub_vpngw_address_prefix
    enforce_private_link_endpoint_network_policies = true
}

resource "azurerm_subnet" "snbastion"{
    name = var.sn_hub_bastion_name
    resource_group_name = var.rg_net_name
    virtual_network_name = var.vnet_hub_name
    address_prefixes = var.sn_hub_bastion_address_prefix
    enforce_private_link_endpoint_network_policies = true
}

resource "azurerm_subnet" "snss"{
    name = var.sn_hub_ss_name
    resource_group_name = var.rg_net_name
    virtual_network_name = var.vnet_hub_name
    address_prefixes = var.sn_hub_ss_address_prefix
    enforce_private_link_endpoint_network_policies = true
}

## UAT Subnets

resource "azurerm_subnet" "snaks"{
    name = var.sn_uat_aks_name
    resource_group_name = var.rg_net_name
    virtual_network_name = var.vnet_uat_name
    address_prefixes = var.sn_uat_aks_address_prefix
    enforce_private_link_endpoint_network_policies = true
}

resource "azurerm_subnet" "sndb"{
    name = var.sn_uat_db_name
    resource_group_name = var.rg_net_name
    virtual_network_name = var.vnet_uat_name
    address_prefixes = var.sn_uat_db_address_prefix
}

resource "azurerm_subnet" "snapp1"{
    name = var.sn_uat_app1_name
    resource_group_name = var.rg_net_name
    virtual_network_name = var.vnet_uat_name
    address_prefixes = var.sn_uat_app1_address_prefix
}

resource "azurerm_subnet" "snapp2"{
    name = var.sn_uat_app2_name
    resource_group_name = var.rg_net_name
    virtual_network_name = var.vnet_uat_name
    address_prefixes = var.sn_uat_app2_address_prefix
}

## VNET Peering

resource "azurerm_virtual_network_peering" "peerhubtouat"{
    name = "Hub_to_UAT"
    resource_group_name = var.rg_net_name
    virtual_network_name = var.vnet_hub_name
    remote_virtual_network_id = azurerm_virtual_network.vnetuat.id
    allow_virtual_network_access = true
    allow_forwarded_traffic = true
    allow_gateway_transit = true
}

resource "azurerm_virtual_network_peering" "peeruattohub"{
    name = "UAT_to_HUB"
    resource_group_name = var.rg_net_name
    virtual_network_name = var.vnet_uat_name
    remote_virtual_network_id = azurerm_virtual_network.vnethb.id
    allow_virtual_network_access = true
    allow_forwarded_traffic = true
    #use_remote_gateways = true
}
