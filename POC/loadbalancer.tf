## Load Balancer for App1

resource "azurerm_lb" "lbapp1"{
    name = var.inlb_app1
    resource_group_name = var.rg_uat_app1_name
    location = var.pr_location
    sku = "Standard"
    sku_tier = "Regional"
    
    
    frontend_ip_configuration {
      name = var.ilb_feapp1
      private_ip_address_allocation = "Static"
      subnet_id = azurerm_subnet.snapp1.id
      private_ip_address = var.ilb_app1_ip
      availability_zone = "No-Zone"
    }

    frontend_ip_configuration {
          availability_zone             = "No-Zone"
          ##inbound_nat_rules             = []
          ##load_balancer_rules           = [ "/subscriptions/4320f689-5133-4260-b235-d02cc16611ff/resourceGroups/rg-uat-app-ci-001/providers/Microsoft.Network/loadBalancers/ilb-uat-app1-ci-001/loadBalancingRules/rule-app1-java-1-8180", ]
          name                          = "fe-lbapp1-java1"
          ##outbound_rules                = []
          private_ip_address            = "10.121.16.202"
          private_ip_address_allocation = "Static"
          private_ip_address_version    = "IPv4"
          subnet_id                     = azurerm_subnet.snapp1.id
          
        }

        frontend_ip_configuration {
          availability_zone             = "No-Zone"
          ##inbound_nat_rules             = []
          ##load_balancer_rules           = [
          ##    "/subscriptions/4320f689-5133-4260-b235-d02cc16611ff/resourceGroups/rg-uat-app-ci-001/providers/Microsoft.Network/loadBalancers/ilb-uat-app1-ci-001/loadBalancingRules/rule-app1-java-2-8180",
          ##    "/subscriptions/4320f689-5133-4260-b235-d02cc16611ff/resourceGroups/rg-uat-app-ci-001/providers/Microsoft.Network/loadBalancers/ilb-uat-app1-ci-001/loadBalancingRules/rule-app1-java-2-8483", ]
          name                          = "fe-lbapp1-java2"
          ##outbound_rules                = [] 
          private_ip_address            = "10.121.16.203"
          private_ip_address_allocation = "Static"
          private_ip_address_version    = "IPv4"
          subnet_id                     = azurerm_subnet.snapp1.id
          
        }

        frontend_ip_configuration {
          availability_zone             = "No-Zone"
          ##inbound_nat_rules             = []
          ##load_balancer_rules           = [
          ##    "/subscriptions/4320f689-5133-4260-b235-d02cc16611ff/resourceGroups/rg-uat-app-ci-001/providers/Microsoft.Network/loadBalancers/ilb-uat-app1-ci-001/loadBalancingRules/rule-app1-java-3-8080",
          ##    "/subscriptions/4320f689-5133-4260-b235-d02cc16611ff/resourceGroups/rg-uat-app-ci-001/providers/Microsoft.Network/loadBalancers/ilb-uat-app1-ci-001/loadBalancingRules/rule-app1-java-3-8280", ]
          name                          = "fe-lbapp1-java3"
          ##outbound_rules                = []
          private_ip_address            = "10.121.16.204"
          private_ip_address_allocation = "Static"
          private_ip_address_version    = "IPv4"
          subnet_id                     = azurerm_subnet.snapp1.id
          
        }
        
        frontend_ip_configuration {
          availability_zone             = "No-Zone"
          ##inbound_nat_rules             = []
          ##load_balancer_rules           = [
          ##    "/subscriptions/4320f689-5133-4260-b235-d02cc16611ff/resourceGroups/rg-uat-app-ci-001/providers/Microsoft.Network/loadBalancers/ilb-uat-app1-ci-001/loadBalancingRules/rule-app1-java-4-8080", ]
          name                          = "fe-lbapp1-java4"
          ##outbound_rules                = []
          private_ip_address            = "10.121.16.205"
          private_ip_address_allocation = "Static"
          private_ip_address_version    = "IPv4"
          subnet_id                     = azurerm_subnet.snapp1.id
          
        }

        frontend_ip_configuration {
          availability_zone             = "No-Zone"
          ##inbound_nat_rules             = []
          ##load_balancer_rules           = [
           ##   "/subscriptions/4320f689-5133-4260-b235-d02cc16611ff/resourceGroups/rg-uat-app-ci-001/providers/Microsoft.Network/loadBalancers/ilb-uat-app1-ci-001/loadBalancingRules/rule-app1-java-5-8080",
           ##   "/subscriptions/4320f689-5133-4260-b235-d02cc16611ff/resourceGroups/rg-uat-app-ci-001/providers/Microsoft.Network/loadBalancers/ilb-uat-app1-ci-001/loadBalancingRules/rule-app1-java-5-8430", ]
          name                          = "fe-lbapp1-java5"
          ##outbound_rules                = []
          private_ip_address            = "10.121.16.206"
          private_ip_address_allocation = "Static"
          private_ip_address_version    = "IPv4"
          subnet_id                     = azurerm_subnet.snapp1.id
          
        }

        frontend_ip_configuration {
          availability_zone             = "No-Zone"
          ##inbound_nat_rules             = []
          ##load_balancer_rules           = [
          ##    "/subscriptions/4320f689-5133-4260-b235-d02cc16611ff/resourceGroups/rg-uat-app-ci-001/providers/Microsoft.Network/loadBalancers/ilb-uat-app1-ci-001/loadBalancingRules/rule-app1-java-05-80", ]
          name                          = "fe-lbapp1-java05"
          ##outbound_rules                = []
          private_ip_address            = "10.121.16.207"
          private_ip_address_allocation = "Static"
          private_ip_address_version    = "IPv4"
          subnet_id                     = azurerm_subnet.snapp1.id
          
        }
}
/*
resource "azurerm_lb_rule" "ilbapp1rule" {
  loadbalancer_id                = azurerm_lb.lbapp1.id
  resource_group_name = var.rg_uat_app1_name
  name                           = "lbrule-tcp-8081"
  protocol                       = "Tcp"
  frontend_port                  = 8081
  backend_port                   = 8081
  frontend_ip_configuration_name = var.ilb_feapp1
}*/

/*
## Load Balancer for App2

resource "azurerm_lb" "lbapp2"{
    name = var.ilb_app2
    resource_group_name = var.rg_uat_app2_name
    location = var.pr_location
    sku = "Standard"
    sku_tier = "Regional"
    
    
    frontend_ip_configuration {
      name = var.ilb_feapp2
      private_ip_address_allocation = "Static"
      subnet_id = azurerm_subnet.snapp2.id
      private_ip_address = var.ilb_app2_ip
      availability_zone = "No-Zone"
    }
}

## Load Balancer for AKs

resource "azurerm_lb" "lbaks1"{
    name = var.ilb_aks1
    resource_group_name = var.rg_uat_appaks_name
    location = var.pr_location
    sku = "Standard"
    sku_tier = "Regional"
    
    
    frontend_ip_configuration {
      name = var.ilb_feaks1rub1
      private_ip_address_allocation = "Static"
      subnet_id = azurerm_subnet.snaks.id
      private_ip_address = var.ilb_aks1_feiprub1
      availability_zone = "No-Zone"
    }

    frontend_ip_configuration {
      name = var.ilb_feaks1rub2
      private_ip_address_allocation = "Static"
      subnet_id = azurerm_subnet.snaks.id
      private_ip_address = var.ilb_aks1_feiprub2
      availability_zone = "No-Zone"
    }
}
*/