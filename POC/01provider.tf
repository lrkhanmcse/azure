terraform {
  required_providers{
      azurerm = {
          source="hashicorp/azurerm"
          version="~>2.95.0"
      }
  }
}

provider "azurerm"{
    features{}
    
    subscription_id = "4320f689-5133-4260-b235-d02cc16611ff"
    tenant_id= "e1fe46a6-0031-4790-a0f6-9ec9d3ef1ae8"  
}