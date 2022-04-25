output "fw_hub_private_ip_address" {
  value = module.hub.fw_hub_private_ip_address
}

output "vnet_hub_id" {
  value       = module.hub.vnet_hub_id
  description = "the id of the primary virtual network"
}

output "fwp_hub_id" {
  value       = module.hub.fwp_hub_id
  description = "the resource id of the hub firewall policy"
}

output "vnet_hub_name" {
  value       = module.hub.vnet_hub_name
  description = "the name of the primary virtual network"
}

output "hub_connectivity_rg_name" {
  value = module.hub.hub_connectivity_rg_name
}

output "AzureBastionSubnet_address_prefixes" {
  value       = module.hub.AzureBastionSubnet_address_prefixes
  description = "the subnet prefix of the AzureBastionSubnet"
}

output "rgnames" {
  value = module.hub.rgnames
}

output "hub_law_id" {
  value = module.hub.hub_law_id
}