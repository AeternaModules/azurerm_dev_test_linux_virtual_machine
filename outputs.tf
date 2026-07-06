output "dev_test_linux_virtual_machines" {
  description = "All dev_test_linux_virtual_machine resources"
  value       = azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines
  sensitive   = true
}
output "dev_test_linux_virtual_machines_allow_claim" {
  description = "List of allow_claim values across all dev_test_linux_virtual_machines"
  value       = [for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : v.allow_claim]
}
output "dev_test_linux_virtual_machines_disallow_public_ip_address" {
  description = "List of disallow_public_ip_address values across all dev_test_linux_virtual_machines"
  value       = [for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : v.disallow_public_ip_address]
}
output "dev_test_linux_virtual_machines_fqdn" {
  description = "List of fqdn values across all dev_test_linux_virtual_machines"
  value       = [for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : v.fqdn]
}
output "dev_test_linux_virtual_machines_gallery_image_reference" {
  description = "List of gallery_image_reference values across all dev_test_linux_virtual_machines"
  value       = [for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : v.gallery_image_reference]
}
output "dev_test_linux_virtual_machines_inbound_nat_rule" {
  description = "List of inbound_nat_rule values across all dev_test_linux_virtual_machines"
  value       = [for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : v.inbound_nat_rule]
}
output "dev_test_linux_virtual_machines_lab_name" {
  description = "List of lab_name values across all dev_test_linux_virtual_machines"
  value       = [for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : v.lab_name]
}
output "dev_test_linux_virtual_machines_lab_subnet_name" {
  description = "List of lab_subnet_name values across all dev_test_linux_virtual_machines"
  value       = [for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : v.lab_subnet_name]
}
output "dev_test_linux_virtual_machines_lab_virtual_network_id" {
  description = "List of lab_virtual_network_id values across all dev_test_linux_virtual_machines"
  value       = [for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : v.lab_virtual_network_id]
}
output "dev_test_linux_virtual_machines_location" {
  description = "List of location values across all dev_test_linux_virtual_machines"
  value       = [for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : v.location]
}
output "dev_test_linux_virtual_machines_name" {
  description = "List of name values across all dev_test_linux_virtual_machines"
  value       = [for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : v.name]
}
output "dev_test_linux_virtual_machines_notes" {
  description = "List of notes values across all dev_test_linux_virtual_machines"
  value       = [for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : v.notes]
}
output "dev_test_linux_virtual_machines_password" {
  description = "List of password values across all dev_test_linux_virtual_machines"
  value       = [for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : v.password]
  sensitive   = true
}
output "dev_test_linux_virtual_machines_resource_group_name" {
  description = "List of resource_group_name values across all dev_test_linux_virtual_machines"
  value       = [for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : v.resource_group_name]
}
output "dev_test_linux_virtual_machines_size" {
  description = "List of size values across all dev_test_linux_virtual_machines"
  value       = [for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : v.size]
}
output "dev_test_linux_virtual_machines_ssh_key" {
  description = "List of ssh_key values across all dev_test_linux_virtual_machines"
  value       = [for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : v.ssh_key]
}
output "dev_test_linux_virtual_machines_storage_type" {
  description = "List of storage_type values across all dev_test_linux_virtual_machines"
  value       = [for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : v.storage_type]
}
output "dev_test_linux_virtual_machines_tags" {
  description = "List of tags values across all dev_test_linux_virtual_machines"
  value       = [for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : v.tags]
}
output "dev_test_linux_virtual_machines_unique_identifier" {
  description = "List of unique_identifier values across all dev_test_linux_virtual_machines"
  value       = [for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : v.unique_identifier]
}
output "dev_test_linux_virtual_machines_username" {
  description = "List of username values across all dev_test_linux_virtual_machines"
  value       = [for k, v in azurerm_dev_test_linux_virtual_machine.dev_test_linux_virtual_machines : v.username]
}

