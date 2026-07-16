output "dev_test_linux_virtual_machines_id" {
  description = "Map of id values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dev_test_linux_virtual_machines_allow_claim" {
  description = "Map of allow_claim values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.allow_claim if v.allow_claim != null }
}
output "dev_test_linux_virtual_machines_disallow_public_ip_address" {
  description = "Map of disallow_public_ip_address values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.disallow_public_ip_address if v.disallow_public_ip_address != null }
}
output "dev_test_linux_virtual_machines_fqdn" {
  description = "Map of fqdn values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.fqdn if v.fqdn != null && length(v.fqdn) > 0 }
}
output "dev_test_linux_virtual_machines_gallery_image_reference" {
  description = "Map of gallery_image_reference values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.gallery_image_reference if v.gallery_image_reference != null && length(v.gallery_image_reference) > 0 }
}
output "dev_test_linux_virtual_machines_inbound_nat_rule" {
  description = "Map of inbound_nat_rule values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.inbound_nat_rule if v.inbound_nat_rule != null && length(v.inbound_nat_rule) > 0 }
}
output "dev_test_linux_virtual_machines_lab_name" {
  description = "Map of lab_name values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.lab_name if v.lab_name != null && length(v.lab_name) > 0 }
}
output "dev_test_linux_virtual_machines_lab_subnet_name" {
  description = "Map of lab_subnet_name values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.lab_subnet_name if v.lab_subnet_name != null && length(v.lab_subnet_name) > 0 }
}
output "dev_test_linux_virtual_machines_lab_virtual_network_id" {
  description = "Map of lab_virtual_network_id values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.lab_virtual_network_id if v.lab_virtual_network_id != null && length(v.lab_virtual_network_id) > 0 }
}
output "dev_test_linux_virtual_machines_location" {
  description = "Map of location values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.location if v.location != null && length(v.location) > 0 }
}
output "dev_test_linux_virtual_machines_name" {
  description = "Map of name values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.name if v.name != null && length(v.name) > 0 }
}
output "dev_test_linux_virtual_machines_notes" {
  description = "Map of notes values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.notes if v.notes != null && length(v.notes) > 0 }
}
output "dev_test_linux_virtual_machines_password" {
  description = "Map of password values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.password if v.password != null && length(v.password) > 0 }
  sensitive   = true
}
output "dev_test_linux_virtual_machines_resource_group_name" {
  description = "Map of resource_group_name values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "dev_test_linux_virtual_machines_size" {
  description = "Map of size values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.size if v.size != null && length(v.size) > 0 }
}
output "dev_test_linux_virtual_machines_ssh_key" {
  description = "Map of ssh_key values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.ssh_key if v.ssh_key != null && length(v.ssh_key) > 0 }
}
output "dev_test_linux_virtual_machines_storage_type" {
  description = "Map of storage_type values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.storage_type if v.storage_type != null && length(v.storage_type) > 0 }
}
output "dev_test_linux_virtual_machines_tags" {
  description = "Map of tags values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "dev_test_linux_virtual_machines_unique_identifier" {
  description = "Map of unique_identifier values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.unique_identifier if v.unique_identifier != null && length(v.unique_identifier) > 0 }
}
output "dev_test_linux_virtual_machines_username" {
  description = "Map of username values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.username if v.username != null && length(v.username) > 0 }
}

