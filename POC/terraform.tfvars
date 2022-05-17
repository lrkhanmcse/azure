## Location

pr_location = "centralindia"

##Resource Group
rg_net_name = "rg-hub-net-ci-001"
## rg_uat_appphp_name = "rg-uat-app-ci-php001"
## rg_uat_appjava_name = "rg-uat-app-ci-java001"
rg_uat_appaks_name = "rg-uat-aks-ci-001"
rg_uat_db_name = "rg-uat-db-ci-001"
rg_hub_ss_name = "rg-hub-ss-ci-001"
rg_hub_bastion_name = "rg-hub-bas-ci-001"
rg_uat_app1_name = "rg-uat-app-ci-001"
rg_uat_app2_name = "rg-uat-app-ci-002"

## Hub Network

vnet_hub_name = "vnet-hub-net-ci-001"
vnet_hub_address_space = ["10.121.0.0/23"]
sn_hub_extfw_name = "AzureFirewallSubnet"
sn_hub_extfw_address_prefix = ["10.121.0.0/26"]
## sn_hub_intfw_name = ""
## sn_hub_intfw_address_prefix = [""]
sn_hub_appgw_name = "sn-hub-appgw-ci-001"
sn_hub_appgw_address_prefix = ["10.121.0.128/26"]
sn_hub_vpngw_name = "GatewaySubnet"
sn_hub_vpngw_address_prefix = ["10.121.0.64/26"]
sn_hub_bastion_name = "AzureBastionSubnet"
sn_hub_bastion_address_prefix = ["10.121.1.0/26"]
sn_hub_ss_name = "sn-hub-ss-ci-001"
sn_hub_ss_address_prefix = ["10.121.1.128/25"]

##UAT Network

vnet_uat_name = "vnet-uat-net-ci-001"
vnet_uat_address_space = ["10.121.16.0/20"]
/* sn_uat_appphp_name = ""
sn_uat_appphp_address_prefix = [""]
sn_uat_appjava_name = ""
sn_uat_appjava_address_prefix = [""] */
sn_uat_aks_name = "sn-uat-aks-ci-001"
sn_uat_aks_address_prefix = ["10.121.24.0/22"]
sn_uat_db_name = "sn-uat-db-ci-001"
sn_uat_db_address_prefix = ["10.121.20.0/24"]
sn_uat_app1_name = "sn-uat-app-ci-001"
sn_uat_app1_address_prefix = ["10.121.16.0/24"]
sn_uat_app2_name = "sn-uat-app-ci-002"
sn_uat_app2_address_prefix = ["10.121.18.0/24"]

## NSG
/* nsg_appphp = ""
nsg_appjava = "" */
nsg_aks = "nsg-uat-aks-ci-001"
nsg_db = "nsg-uat-db-ci-001"
nsg_ss = "nsg-hub-ss-ci-001"
nsg_bastion = "nsg-hub-bastion-ci-001"
nsg_app1 = "nsg-uat-app-ci-001"
nsg_app2 = "nsg-uat-app-ci-002"


## Storage
stg_name = "stgfilehubssci001"
stg_tier = "Standard"
stg_replication = "LRS"
stg_file_share_name = "azdata"
stg_kind = "StorageV2"
stg_access_tier = "Hot"
stg_file_upload_name = "upload"

# LAW
law_ss_name = "law-hub-ss-ci-001"

## VM Variable

adm_user_name = "***"
adm_user_pass = "***"

## Availability Sets
as_php1 = "as-vm-php01"
as_php2 = "as-vm-php02"
as_java1 = "as-vm-java01"
as_java2 = "as-vm-java02"
as_java3 = "as-vm-java03"
as_java4 = "as-vm-java04"
as_java5 = "as-vm-java05"
as_java05 = "as-vm-java005"
as_db = "as-vm-db"
as_rub1 = "as-vm-rub01"
as_rub2 = "as-vm-rub02"
as_jh = "as-ss-jumphost"


##Variable Image
img_rhel = "gem-img-rhel79"

### Variable for UDR
udt_app1 = "udr-uat-app-ci-001"
udt_app2 = "udr-uat-app-ci-002"
udt_db = "udr-uat-db-ci-001"
udt_aks = "udr-uat-aks-ci-001"
udt_ss = "udr-hub-ss-ci-001"

## Variable for Load Balancer
inlb_app1 = "ilb-uat-app1-ci-001"
ilb_feapp1 = "fe-lbapp1-php1"
ilb_app1_ip = "10.121.16.201"

ilb_app2 = "ilb-uat-app2-ci-001"
ilb_feapp2 = "fe-ilbapp2-php2"
ilb_app2_ip = "10.121.18.201"

ilb_aks1 = "ilb-uat-aks-ci-001"
ilb_feaks1rub1 = "fe-ilbaks-rub1"
ilb_aks1_feiprub1 = "10.121.27.201"

ilb_feaks1rub2 = "fe-ilbaks-rub2"
ilb_aks1_feiprub2 = "10.121.27.202"

# Key Vault
kv_name = "kv-hub-ss-ci-001"

## Recovery Service Vault

rsv_name = "rsv-hub-ss-ci-001"