locals {
hub_address_space = var.vnet_ip_space
ipsplitlist = split(".", local.hub_address_space)

bastion_subnet_octet = sum([tonumber(local.ipsplitlist[3]), 64])
gateway_subnet_octet = sum([tonumber(local.bastion_subnet_octet), 64])
vm_subnet_octet = sum([tonumber(local.gateway_subnet_octet), 32])

vnet_address_space_prefix = format("%s.%s.%s.%s/24", local.ipsplitlist[0], local.ipsplitlist[1], local.ipsplitlist[2], local.ipsplitlist[3])
azfw_subnet_prefix = format("%s.%s.%s.%s/26", local.ipsplitlist[0], local.ipsplitlist[1], local.ipsplitlist[2], local.ipsplitlist[3])
bastion_subnet_prefix = format("%s.%s.%s.%s/26", local.ipsplitlist[0], local.ipsplitlist[1], local.ipsplitlist[2], local.bastion_subnet_octet)
gateway_subnet_prefix = format("%s.%s.%s.%s/27", local.ipsplitlist[0], local.ipsplitlist[1], local.ipsplitlist[2], local.gateway_subnet_octet)
vm_subnet_prefix = format("%s.%s.%s.%s/27", local.ipsplitlist[0], local.ipsplitlist[1], local.ipsplitlist[2], local.vm_subnet_octet)
}

module "hub" {
  source  = "github.com/dev-headaches/terraform-azure-morpheus-hub"
  #version = "0.1.6"
  enviro    = var.enviro #"dev"
  prjnum    = var.prjnum
  location  = "usgovarizona"
  orgname   = var.orgname
  vnet_hub_address_spaces = [local.vnet_address_space_prefix]
  vnet_hub_dns_servers = ["8.8.8.8", "1.1.1.1"]
  azfw_subnet_prefixes = [local.azfw_subnet_prefix]
  bastion_subnet_prefixes = [local.bastion_subnet_prefix]
  gateway_subnet_prefixes = [local.gateway_subnet_prefix]
  vm_subnet_prefixes = [local.vm_subnet_prefix]
  resourcegroupnames = ["Connectivity", "NetSec", "Security", "MGMT", "Compute", "AKS"]
  web_categories_blacklist = ["ChildAbuseImages", "CriminalActivity", "Cults", "Gambling", "HateAndIntolerance", "IllegalDrug", "IllegalSoftware", "LingerieAndSwimsuits", "Nudity", "PornographyAndSexuallyExplicit", "SelfHarm", "Uncategorized", "Violence"]
  fqdnblacklist = ["yahoo.com", "ipchicken.com", "kiloroot.com", "*.yahoo.com", "*.ipchicken.com", "*.kiloroot.com"]
}