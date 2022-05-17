/*resource "azurerm_image" "imgrhel" {
  hyper_v_generation = "V2"
  
  name                = var.img_rhel
  location            = var.pr_location
  resource_group_name = var.rg_hub_ss_name
  source_virtual_machine_id = "/subscriptions/4320f689-5133-4260-b235-d02cc16611ff/resourceGroups/rg-uat-app-ci-001/providers/Microsoft.Compute/virtualMachines/myVmphp1"
  zone_resilient = false
  
  tags = {
        "Date" = "28March2022"
        "OS"   = "RHEL79"
        "Type" = "Hardened"
    }
}*/