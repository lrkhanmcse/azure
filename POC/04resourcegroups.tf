## Resource Group for Network

resource "azurerm_resource_group" "rghbnet"{
    name = var.rg_net_name
    location = var.pr_location
}

## Resource Group for Shared Services 

resource "azurerm_resource_group" "rghbss"{
    name = var.rg_hub_ss_name
    location = var.pr_location
}

## Resource Group for Bastion

resource "azurerm_resource_group" "rgbas"{
    name = var.rg_hub_bastion_name
    location = var.pr_location
}

## Resource Group for PHP Apps
/*
resource "azurerm_resource_group" "rguatphp"{
    name = var.rg_uat_appphp_name
    location = var.pr_location
}

## Resource Group for Java apps

resource "azurerm_resource_group" "rguatjava"{
    name = var.rg_uat_appjava_name
    location = var.pr_location
}
*/

## Resource Group for Container or AKS

resource "azurerm_resource_group" "rguataks"{
    name = var.rg_uat_appaks_name
    location = var.pr_location
}

## Resource Group for App1

resource "azurerm_resource_group" "rguatapp1"{
    name = var.rg_uat_app1_name
    location = var.pr_location
}

## Resource Group for App2

resource "azurerm_resource_group" "rguatapp2"{
    name = var.rg_uat_app2_name
    location = var.pr_location
}

resource "azurerm_resource_group" "rguatdb"{
    name = var.rg_uat_db_name
    location = var.pr_location
}