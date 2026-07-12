output "dev_test_linux_virtual_machines_allow_claim" {
  description = "Map of allow_claim values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.allow_claim }
}
output "dev_test_linux_virtual_machines_disallow_public_ip_address" {
  description = "Map of disallow_public_ip_address values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.disallow_public_ip_address }
}
output "dev_test_linux_virtual_machines_fqdn" {
  description = "Map of fqdn values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.fqdn }
}
output "dev_test_linux_virtual_machines_gallery_image_reference" {
  description = "Map of gallery_image_reference values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.gallery_image_reference }
}
output "dev_test_linux_virtual_machines_inbound_nat_rule" {
  description = "Map of inbound_nat_rule values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.inbound_nat_rule }
}
output "dev_test_linux_virtual_machines_lab_name" {
  description = "Map of lab_name values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.lab_name }
}
output "dev_test_linux_virtual_machines_lab_subnet_name" {
  description = "Map of lab_subnet_name values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.lab_subnet_name }
}
output "dev_test_linux_virtual_machines_lab_virtual_network_id" {
  description = "Map of lab_virtual_network_id values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.lab_virtual_network_id }
}
output "dev_test_linux_virtual_machines_location" {
  description = "Map of location values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.location }
}
output "dev_test_linux_virtual_machines_name" {
  description = "Map of name values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.name }
}
output "dev_test_linux_virtual_machines_notes" {
  description = "Map of notes values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.notes }
}
output "dev_test_linux_virtual_machines_password" {
  description = "Map of password values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.password }
  sensitive   = true
}
output "dev_test_linux_virtual_machines_resource_group_name" {
  description = "Map of resource_group_name values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.resource_group_name }
}
output "dev_test_linux_virtual_machines_size" {
  description = "Map of size values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.size }
}
output "dev_test_linux_virtual_machines_ssh_key" {
  description = "Map of ssh_key values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.ssh_key }
}
output "dev_test_linux_virtual_machines_storage_type" {
  description = "Map of storage_type values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.storage_type }
}
output "dev_test_linux_virtual_machines_tags" {
  description = "Map of tags values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.tags }
}
output "dev_test_linux_virtual_machines_unique_identifier" {
  description = "Map of unique_identifier values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.unique_identifier }
}
output "dev_test_linux_virtual_machines_username" {
  description = "Map of username values across all dev_test_linux_virtual_machines, keyed the same as var.dev_test_linux_virtual_machines"
  value       = { for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : k => v.username }
}

