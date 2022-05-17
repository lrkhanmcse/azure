resource "azurerm_log_analytics_workspace" "lawlog"{
    name = var.law_ss_name
    location = var.pr_location
    resource_group_name = var.rg_hub_ss_name
    sku = "PerGB2018"
    retention_in_days= 30
    daily_quota_gb = 10
}