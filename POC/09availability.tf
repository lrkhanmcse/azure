## Proximity Group

resource "azurerm_proximity_placement_group" "pxmapp1"{
    name = "pxm-ci-001"
    location = var.pr_location
    resource_group_name = var.rg_uat_app1_name
}

## Availability Sets


resource "azurerm_availability_set" "asphp1"{
    name = var.as_php1
    location = var.pr_location
    resource_group_name = var.rg_uat_app1_name
    proximity_placement_group_id = azurerm_proximity_placement_group.pxmapp1.id
}

resource "azurerm_availability_set" "asphp2"{
    name = var.as_php2
    location = var.pr_location
    resource_group_name = var.rg_uat_app2_name
    proximity_placement_group_id = azurerm_proximity_placement_group.pxmapp1.id
}

resource "azurerm_availability_set" "asdb"{
    name = var.as_db
    location = var.pr_location
    resource_group_name = var.rg_uat_db_name
    proximity_placement_group_id = azurerm_proximity_placement_group.pxmapp1.id
}

resource "azurerm_availability_set" "asrub1"{
    name = var.as_rub1
    location = var.pr_location
    resource_group_name = var.rg_uat_appaks_name
    proximity_placement_group_id = azurerm_proximity_placement_group.pxmapp1.id
}

resource "azurerm_availability_set" "as_rub2"{
    name = var.as_rub2
    location = var.pr_location
    resource_group_name = var.rg_uat_appaks_name
    proximity_placement_group_id = azurerm_proximity_placement_group.pxmapp1.id
}

resource "azurerm_availability_set" "as_java1"{
    name = var.as_java1
    location = var.pr_location
    resource_group_name = var.rg_uat_app1_name
    proximity_placement_group_id = azurerm_proximity_placement_group.pxmapp1.id
}

resource "azurerm_availability_set" "as_java2"{
    name = var.as_java2
    location = var.pr_location
    resource_group_name = var.rg_uat_app1_name
    proximity_placement_group_id = azurerm_proximity_placement_group.pxmapp1.id
}

resource "azurerm_availability_set" "as_java3"{
    name = var.as_java3
    location = var.pr_location
    resource_group_name = var.rg_uat_app1_name
    proximity_placement_group_id = azurerm_proximity_placement_group.pxmapp1.id
}

resource "azurerm_availability_set" "as_java4"{
    name = var.as_java4
    location = var.pr_location
    resource_group_name = var.rg_uat_app1_name
    proximity_placement_group_id = azurerm_proximity_placement_group.pxmapp1.id
}

resource "azurerm_availability_set" "as_java5"{
    name = var.as_java5
    location = var.pr_location
    resource_group_name = var.rg_uat_app1_name
    proximity_placement_group_id = azurerm_proximity_placement_group.pxmapp1.id
}

resource "azurerm_availability_set" "as_java05"{
    name = var.as_java05
    location = var.pr_location
    resource_group_name = var.rg_uat_app1_name
    proximity_placement_group_id = azurerm_proximity_placement_group.pxmapp1.id
}

resource "azurerm_availability_set" "as_jh"{
    name = var.as_jh
    location = var.pr_location
    resource_group_name = var.rg_uat_appaks_name
    proximity_placement_group_id = azurerm_proximity_placement_group.pxmapp1.id
}