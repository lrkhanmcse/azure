## DC Location Variables

variable pr_location {
    type = string
}


## Resource Group Variables

variable rg_net_name{
    type = string
}

/*
variable rg_uat_appphp_name{
    type = string
}

variable rg_uat_appjava_name{
    type = string
}
*/

variable rg_uat_appaks_name{
    type = string
}

variable rg_uat_db_name{
    type = string
}

variable rg_hub_ss_name{
    type = string
}

variable rg_hub_bastion_name{
    type = string
}

variable rg_uat_app1_name{
    type = string
}

variable rg_uat_app2_name{
    type = string
}

## Hub Network Variables

variable vnet_hub_name{
    type = string
}

variable vnet_hub_address_space{
    type = list
}

variable sn_hub_extfw_name{
    type = string
}

variable sn_hub_extfw_address_prefix{
    type = list
}

/*
variable sn_hub_intfw_name{
    type = string
}

variable sn_hub_intfw_address_prefix{
    type = list
}
*/

variable sn_hub_vpngw_name{
    type = string
}

variable sn_hub_vpngw_address_prefix{
    type = list
}

variable sn_hub_appgw_name{
    type = string
}

variable sn_hub_appgw_address_prefix{
    type = list
}

variable sn_hub_bastion_name{
    type = string
}

variable sn_hub_bastion_address_prefix{
    type = list
}

variable sn_hub_ss_name{
    type = string
}

variable sn_hub_ss_address_prefix{
    type = list
}


## UAT Network Variables

variable vnet_uat_name{
    type = string
}

variable vnet_uat_address_space{
    type = list
}

/*
variable sn_uat_appphp_name{
    type = string
}

variable sn_uat_appphp_address_prefix{
    type = list
}

variable sn_uat_appjava_name{
    type = string
}

variable sn_uat_appjava_address_prefix{
    type = list
}
*/

variable sn_uat_aks_name{
    type = string
}

variable sn_uat_aks_address_prefix{
    type = list
}

variable sn_uat_db_name{
    type = string
}

variable sn_uat_db_address_prefix{
    type = list
}

variable sn_uat_app1_name{
    type = string
}

variable sn_uat_app1_address_prefix{
    type = list
}

variable sn_uat_app2_name{
    type = string
}

variable sn_uat_app2_address_prefix{
    type = list
}

## NSG Variables

/*
variable nsg_appphp{
    type = string
}

variable nsg_appjava{
    type = string
}
*/

variable nsg_aks{
    type = string
}

variable nsg_db{
    type = string
}

variable nsg_ss{
    type = string
}

variable nsg_bastion{
    type = string
}

variable nsg_app1{
    type = string
}

variable nsg_app2{
    type = string
}

## Variable for UDR


## Variable for Storage

variable stg_name{
    type = string
}

variable stg_tier{
    type = string
}

variable stg_replication{
    type = string
}

variable stg_file_share_name{
    type = string
}

variable stg_kind{
    type = string
}

variable stg_access_tier{
    type = string
}

variable stg_file_upload_name{
    type = string
}

#Variable for LAW

variable law_ss_name{
    type = string
}

## VM variables

variable adm_user_name{
    type = string
}

variable adm_user_pass{
    type = string
}

## Availability set Variable

variable as_php1{
    type = string
}

variable "as_php2" {
    type = string
}

variable "as_java1"{
    type = string
}

variable "as_java2"{
    type = string
}

variable "as_java3" {
    type = string  
}

variable "as_java4"{
    type = string
}

variable "as_java5"{
    type = string
}

variable "as_java05"{
    type = string
}

variable "as_db"{
    type = string
}

variable "as_rub1"{
    type = string
}

variable "as_rub2"{
    type = string
}

variable "as_jh"{
    type = string
}

## Variable for Image

variable "img_rhel"{
    type = string
}

## Variable for UDR

variable udt_app1{
    type = string
}

variable udt_app2{
    type = string
}

variable udt_db{
    type = string
}

variable udt_aks{
    type = string
}

variable udt_ss{
    type = string
}

## Variable for Load Balancers
variable inlb_app1{
    type = string
}

variable ilb_feapp1{
    type = string
}

variable ilb_app1_ip{
    type = string
}

variable ilb_app2{
    type = string
}

variable ilb_feapp2{
    type = string
}

variable ilb_app2_ip{
    type = string
}


variable ilb_aks1{
    type = string
}

variable ilb_feaks1rub1{
    type = string
}

variable ilb_aks1_feiprub1{
    type = string
}

variable ilb_feaks1rub2{
    type = string
}

variable ilb_aks1_feiprub2{
    type = string
}

## Variable for Key Vault

variable kv_name{
    type = string
}

## Recovery Services vault

variable rsv_name{
    type = string
}