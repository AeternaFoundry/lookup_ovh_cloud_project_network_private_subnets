data "ovh_cloud_project_network_private_subnets" "cloud_project_network_private_subnets_lookup" {
  for_each = var.cloud_project_network_private_subnets_lookup

  network_id   = each.value.network_id
  service_name = each.value.service_name
}

