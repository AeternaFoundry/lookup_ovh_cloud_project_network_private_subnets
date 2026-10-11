output "cloud_project_network_private_subnets_lookup_network_id" {
  description = "Map of network_id values across all cloud_project_network_private_subnets_lookup, keyed the same as var.cloud_project_network_private_subnets_lookup except keys with no network_id are omitted"
  value       = { for k, v in data.ovh_cloud_project_network_private_subnets.cloud_project_network_private_subnets_lookup : k => v.network_id if v.network_id != null && length(v.network_id) > 0 }
}
output "cloud_project_network_private_subnets_lookup_service_name" {
  description = "Map of service_name values across all cloud_project_network_private_subnets_lookup, keyed the same as var.cloud_project_network_private_subnets_lookup except keys with no service_name are omitted"
  value       = { for k, v in data.ovh_cloud_project_network_private_subnets.cloud_project_network_private_subnets_lookup : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}
output "cloud_project_network_private_subnets_lookup_subnets" {
  description = "Map of subnets values across all cloud_project_network_private_subnets_lookup, keyed the same as var.cloud_project_network_private_subnets_lookup except keys with no subnets are omitted"
  value       = { for k, v in data.ovh_cloud_project_network_private_subnets.cloud_project_network_private_subnets_lookup : k => v.subnets if v.subnets != null && length(v.subnets) > 0 }
}

