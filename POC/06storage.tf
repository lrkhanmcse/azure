# Storage account for file share

resource "azurerm_storage_account" "stgss"{
    name = var.stg_name
    resource_group_name = var.rg_hub_ss_name
    location = var.pr_location
    account_kind = var.stg_kind
    account_tier = var.stg_tier
    access_tier = var.stg_access_tier
    account_replication_type = var.stg_replication
}

/*
resource "azurerm_storage_share" "stgfiless"{
    name = var.stg_file_share_name
    storage_account_name = azurerm_storage_account.stgss.name
    #quota = 50
    enabled_protocol = "NFS"
}
*/
/*
resource "azurerm_stroage_share" "stgfileupload"{
    name = var.stg_file_upload_name
    storage_account_name = azurerm_storage_account.stgss.name
    quot

}
*/