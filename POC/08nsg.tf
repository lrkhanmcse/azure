## NSG Rule for App1

resource "azurerm_network_security_group" "nsgapp1"{
    name = var.nsg_app1
    resource_group_name = var.rg_uat_app1_name
    location = var.pr_location

    security_rule {
        name = "Allow_In_AppGW"
        priority = 108
        direction = "Inbound"
        access = "Allow"
        protocol = "TCP"
        source_address_prefix = "10.121.0.64/26"
        source_port_range = "*"
        destination_address_prefix = "10.121.16.17"
        destination_port_range = "8082" 
    }

    security_rule {
        name = "Allow_In_LBPHP1"
        priority = 100
        direction = "Inbound"
        access = "Allow"
        protocol = "TCP"
        source_address_prefix = "10.121.16.201"
        source_port_range = "*"
        destination_address_prefixes = ["10.121.16.17", "10.121.16.9"]
        destination_port_ranges = ["8081", "8082", "8083"]   
    }

    security_rule {
        name = "Allow_In_LBJava1"
        priority = 101
        direction = "Inbound"
        access = "Allow"
        protocol = "TCP"
        source_address_prefix = "10.121.16.202"
        source_port_range = "*"
        destination_address_prefixes = ["10.121.16.4", "10.121.16.5"]
        destination_port_range = "8180"   
    }


    security_rule {
        name = "Allow_In_LBJava2"
        priority = 102
        direction = "Inbound"
        access = "Allow"
        protocol = "TCP"
        source_address_prefix = "10.121.16.203"
        source_port_range = "*"
        destination_address_prefixes = ["10.121.16.6", "10.121.16.7"]
        destination_port_ranges = ["8180", "8483"]   
    }

    security_rule {
        name = "Allow_In_LBJava3"
        priority = 103
        direction = "Inbound"
        access = "Allow"
        protocol = "TCP"
        source_address_prefix = "10.121.16.204"
        source_port_range = "*"
        destination_address_prefixes = ["10.121.16.8", "10.121.16.10"]
        destination_port_ranges = ["8080", "8280"]   
    }

    security_rule {
        name = "Allow_In_LBJava4"
        priority = 104
        direction = "Inbound"
        access = "Allow"
        protocol = "TCP"
        source_address_prefix = "10.121.16.205"
        source_port_range = "*"
        destination_address_prefixes = ["10.121.16.11", "10.121.16.12"]
        destination_port_range = "8080"   
    }

    security_rule {
        name = "Allow_In_LBJava5"
        priority = 105
        direction = "Inbound"
        access = "Allow"
        protocol = "TCP"
        source_address_prefix = "10.121.16.206"
        source_port_range = "*"
        destination_address_prefixes = ["10.121.16.13", "10.121.16.14"]
        destination_port_ranges = ["8080", "8430"]   
    }

    security_rule {
        name = "Allow_In_LBJava05"
        priority = 106
        direction = "Inbound"
        access = "Allow"
        protocol = "TCP"
        source_address_prefix = "10.121.16.207"
        source_port_range = "*"
        destination_address_prefixes = ["10.121.16.15", "10.121.16.16"]
        destination_port_range = "80"   
    }

    security_rule {
        name = "Allow_In_AppGWLBApp1"
        priority = 107
        direction = "Inbound"
        access = "Allow"
        protocol = "TCP"
        source_address_prefix = "10.121.0.128/26"
        source_port_range = "*"
        destination_address_prefixes = ["10.121.16.201", "10.121.16.202", "10.121.16.203", "10.121.16.204", "10.121.16.205", "10.121.16.206", "10.121.16.207"]
        destination_port_ranges = ["8081","8082", "8083", "8180", "8483", "8080", "8280", "8430" ,"80"]
    }

    security_rule {
        name = "Allow_In_Bastion"
        priority = 4095
        direction = "Inbound"
        access = "Allow"
        protocol = "*"
        source_address_prefix = "10.121.1.0/26"
        source_port_range = "*"
        destination_address_prefixes = ["10.121.16.0/24"]
        destination_port_range = "*"   
    }
    
    security_rule {
        name = "Block_In_All"
        priority = 4096
        direction = "Inbound"
        access = "Deny"
        protocol = "*"
        source_address_prefix = "*"
        source_port_range = "*"
        destination_address_prefix = "*"
        destination_port_range = "*"   
    }

   /* security_rule {
        name = "Allow_Out_Internet"
        priority = 4095
        direction = "Outbound"
        access = "Allow"
        protocol = "*"
        source_address_prefix = "10.121.16.0/24"
        source_port_range = "*"
        destination_address_prefixes = "Internet"
        destination_port_range = "*"   
    }
    
    security_rule {
        name = "Block_Out_All"
        priority = 4096
        direction = "Outbound"
        access = "Deny"
        protocol = "*"
        source_address_prefix = "*"
        source_port_range = "*"
        destination_address_prefixes = "*"
        destination_port_range = "*"   
    }*/
}

resource "azurerm_subnet_network_security_group_association" "nsgsnapp1"{
    subnet_id = azurerm_subnet.snapp1.id
    network_security_group_id = azurerm_network_security_group.nsgapp1.id
}


#NSG for App2

resource "azurerm_network_security_group" "nsgapp2"{
    name = var.nsg_app2
    resource_group_name = var.rg_uat_app2_name
    location = var.pr_location

    security_rule {
        name = "Allow_In_LBPHP2"
        priority = 100
        direction = "Inbound"
        access = "Allow"
        protocol = "TCP"
        source_address_prefix = "10.121.18.201"
        source_port_range = "*"
        destination_address_prefixes = ["10.121.18.4", "10.121.18.5"]
        destination_port_range = "8081"   
    }
    
    security_rule {
        name = "Allow_In_AppGWLBApp2"
        priority = 101
        direction = "Inbound"
        access = "Allow"
        protocol = "TCP"
        source_address_prefix = "10.121.0.128/26"
        source_port_range = "*"
        destination_address_prefix = "10.121.18.201"
        destination_port_range = "8081"   
    }
    
    security_rule {
        name = "Allow_In_Bastion"
        priority = 4095
        direction = "Inbound"
        access = "Allow"
        protocol = "*"
        source_address_prefix = "10.121.1.0/26"
        source_port_range = "*"
        destination_address_prefixes = ["10.121.18.0/24"]
        destination_port_range = "*"   
    }

    security_rule {
        name = "Block_In_All"
        priority = 4096
        direction = "Inbound"
        access = "Deny"
        protocol = "*"
        source_address_prefix = "*"
        source_port_range = "*"
        destination_address_prefix = "*"
        destination_port_range = "*"   
    }

    /*security_rule {
        name = "Allow_Out_Internet"
        priority = 4095
        direction = "Outbound"
        access = "Allow"
        protocol = "*"
        source_address_prefix = "10.121.18.0/24"
        source_port_range = "*"
        destination_address_prefixes = "Internet"
        destination_port_range = "*"   
    }

    security_rule {
        name = "Block_Out_All"
        priority = 4096
        direction = "Outbound"
        access = "Deny"
        protocol = "*"
        source_address_prefix = "*"
        source_port_range = "*"
        destination_address_prefixes = "*"
        destination_port_range = "*"   
    }*/

}

resource "azurerm_subnet_network_security_group_association" "nsgsnapp2"{
    subnet_id = azurerm_subnet.snapp2.id
    network_security_group_id = azurerm_network_security_group.nsgapp2.id
}

## NSG For DB

resource "azurerm_network_security_group" "nsgdb" {
    name = var.nsg_db
    resource_group_name = var.rg_uat_db_name
    location = var.pr_location

    security_rule {
        name = "Allow_In_3306"
        priority = 100
        direction = "Inbound"
        access = "Allow"
        protocol = "TCP"
        source_address_prefixes = ["10.121.16.17", "10.121.16.9", "10.121.18.4", "10.121.18.4", "10.121.16.5", "10.121.16.4", "10.121.16.7", "10.121.16.6", "10.121.16.10", "10.121.16.8", "10.121.16.11", "10.121.16.12", "10.121.16.13", "10.121.16.14", "10.121.16.15", "10.121.16.16", "10.121.24.0/22", "10.121.20.4", "10.121.20.5", "10.121.20.6"]
        source_port_range = "*"
        destination_address_prefixes = ["10.121.20.4", "10.121.20.5", "10.121.20.6"]
        destination_port_range = "3306"   
    }
    
    
    
    security_rule {
        name = "Allow_In_Bastion"
        priority = 4095
        direction = "Inbound"
        access = "Allow"
        protocol = "*"
        source_address_prefix = "10.121.1.0/26"
        source_port_range = "*"
        destination_address_prefixes = ["10.121.20.0/24"]
        destination_port_range = "*"   
    }
    
    security_rule {
        name = "Block_In_All"
        priority = 4096
        direction = "Inbound"
        access = "Deny"
        protocol = "*"
        source_address_prefix = "*"
        source_port_range = "*"
        destination_address_prefix = "*"
        destination_port_range = "*"   
    }

    /*security_rule {
        name = "Allow_Out_Internet"
        priority = 4095
        direction = "Outbound"
        access = "Allow"
        protocol = "*"
        source_address_prefix = "10.121.20.0/24"
        source_port_range = "*"
        destination_address_prefixes = "Internet"
        destination_port_range = "*"   
    }

    security_rule {
        name = "Block_Out_All"
        priority = 4096
        direction = "Outbound"
        access = "Deny"
        protocol = "*"
        source_address_prefix = "*"
        source_port_range = "*"
        destination_address_prefixes = "*"
        destination_port_range = "*"   
    }*/

}

resource "azurerm_subnet_network_security_group_association" "nsgsndb"{
    subnet_id = azurerm_subnet.sndb.id
    network_security_group_id = azurerm_network_security_group.nsgdb.id
}

## NSG for AKS

resource "azurerm_network_security_group" "nsgaks"{
    name = var.nsg_aks
    resource_group_name = var.rg_uat_appaks_name
    location = var.pr_location

    security_rule {
        name = "Allow_In_LBAKSCL1_2"
        priority = 100
        direction = "Inbound"
        access = "Allow"
        protocol = "TCP"
        source_address_prefixes = ["10.121.27.203", "10.121.27.204"]
        source_port_range = "*"
        destination_address_prefix = "10.121.24.0/22"
        destination_port_ranges = ["80", "443"]   
        
    }

    security_rule {
        name = "Allow_In_AppGWLBAKS"
        priority = 101
        direction = "Inbound"
        access = "Allow"
        protocol = "TCP"
        source_address_prefix = "10.121.0.128/26"
        source_port_range = "*"
        destination_address_prefixes = ["10.121.27.203", "10.121.27.204"]
        destination_port_ranges = ["80", "443"]   
        
    }
        
    security_rule {
        name = "Allow_In_Bastion"
        priority = 4095
        direction = "Inbound"
        access = "Allow"
        protocol = "*"
        source_address_prefix = "10.121.1.0/26"
        source_port_range = "*"
        destination_address_prefixes = ["10.121.24.0/22"]
        destination_port_range = "*"   
        
    }

    security_rule {
        name = "Block_In_All"
        priority = 4096
        direction = "Inbound"
        access = "Deny"
        protocol = "*"
        source_address_prefix = "*"
        source_port_range = "*"
        destination_address_prefix = "*"
        destination_port_range = "*"   
    }

    /*security_rule {
        name = "Allow_Out_Internet"
        priority = 4095
        direction = "Outbound"
        access = "Allow"
        protocol = "*"
        source_address_prefix = "10.121.24.0/22"
        source_port_range = "*"
        destination_address_prefixes = "Internet"
        destination_port_range = "*"   
    }

    security_rule {
        name = "Block_Out_All"
        priority = 4096
        direction = "Outbound"
        access = "Deny"
        protocol = "*"
        source_address_prefix = "*"
        source_port_range = "*"
        destination_address_prefixes = "*"
        destination_port_range = "*"   
    }*/
}

resource "azurerm_subnet_network_security_group_association" "nsgsnaks"{
    subnet_id = azurerm_subnet.snaks.id
    network_security_group_id = azurerm_network_security_group.nsgaks.id
}


## NSG for Shared Services

resource "azurerm_network_security_group" "nsgss"{
    name = var.nsg_ss
    resource_group_name = var.rg_hub_ss_name
    location = var.pr_location

    security_rule {
        name = "Allow_In_Bastion"
        priority = 4095
        direction = "Inbound"
        access = "Allow"
        protocol = "*"
        source_address_prefix = "10.121.1.0/26"
        source_port_range = "*"
        destination_address_prefixes = ["10.121.1.128/25"]
        destination_port_range = "*"   
    }
    
    security_rule {
        name = "Block_In_All"
        priority = 4096
        direction = "Inbound"
        access = "Deny"
        protocol = "*"
        source_address_prefix = "*"
        source_port_range = "*"
        destination_address_prefix = "*"
        destination_port_range = "*"   
    }

    /*security_rule {
        name = "Allow_Out_Internet"
        priority = 4095
        direction = "Outbound"
        access = "Allow"
        protocol = "*"
        source_address_prefix = "10.121.1.128/25"
        source_port_range = "*"
        destination_address_prefixes = "Internet"
        destination_port_range = "*"   
    }

    security_rule {
        name = "Block_Out_All"
        priority = 4096
        direction = "Outbound"
        access = "Deny"
        protocol = "*"
        source_address_prefix = "*"
        source_port_range = "*"
        destination_address_prefixes = "*"
        destination_port_range = "*"   
    }*/
}

resource "azurerm_subnet_network_security_group_association" "nsgsnss"{
    subnet_id = azurerm_subnet.snss.id
    network_security_group_id = azurerm_network_security_group.nsgss.id
}
