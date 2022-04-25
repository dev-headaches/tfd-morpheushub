/*
variable "hubtenantid" {
  type = string
  default = null
}

variable "prjname" {
  type        = string
  description = "define the project name ex. prj02"
  default     = "nbdemo"
}

variable "hubsubscriptionID" {
  type = string
  default = null
}

variable "hubclientid" {
  type = string
  default = null
}

variable "hubclientsecret" {
  type = string
  default = null
}

variable "wrkldtenantid" {
  type = string
  default = null
}

variable "wrkldsubscriptionID" {
  type = string
  default = null
}

variable "wrkldclientid" {
  type = string
  default = null
}

variable "wrkldclientsecret" {
  type = string
  default = null
}

variable "location" {
  type        = string
  description = "location of your resource group"
  default     = "usgovvirginia"
}

variable "backendtoken" {
  type        = string
  default = null
}

variable "vnet_hub_address_spaces" {
  type        = list
  #default = null
  default     = ["192.168.145.0/24"]
}

variable "vnet_hub_dns_servers" {
  type        = list
  #default = null
  default     = ["8.8.8.8", "1.1.1.1"]
}

variable "azfw_subnet_prefixes" {
  type        = list
  #default = null
  default     = ["192.168.145.0/26"]
}

variable "bastion_subnet_prefixes" {
  type        = list
  #default = null
  default     = ["192.168.145.64/26"]
}

variable "gateway_subnet_prefixes" {
  type        = list
  #default = null
  default     = ["192.168.145.128/27"]
}

variable "resourcegroupnames" {
  type        = list
  default = ["Connectivity", "NetSec", "Security", "MGMT"]
}

variable "web_categories_blacklist" {
  type        = list
  default = ["ChildAbuseImages", "CriminalActivity", "Cults", "Gambling", "HateAndIntolerance", "IllegalDrug", "IllegalSoftware", "LingerieAndSwimsuits", "Nudity", "PornographyAndSexuallyExplicit", "SelfHarm", "Uncategorized", "Violence"]
}

variable "fqdnblacklist" {
  type        = list
  default = ["yahoo.com", "ipchicken.com", "kiloroot.com", "*.yahoo.com", "*.ipchicken.com", "*.kiloroot.com"]
}
*/

###

variable "enviro" {
  type        = string
  description = "define the environment ex. dev,tst,prd,stg"
  default     = "dev" 
}

variable "prjnum" {
  type        = string
  description = "define the project number for TFstate file ex. 4858"
  default     = "1111"
}

variable "orgname" {
  type        = string
  default     = "tcld"
}

variable "vnet_ip_space" {
  type = string
}

variable "ARM_ENVIRONMENT" {
    type = string
}
variable "ARM_CLIENT_ID" {
    type = string
}
variable "ARM_TENANT_ID" {
    type = string
}
variable "ARM_CLIENT_SECRET" {
    type = string
    sensitive = true
}
variable "ARM_SUBSCRIPTION_ID" {
    type = string
}