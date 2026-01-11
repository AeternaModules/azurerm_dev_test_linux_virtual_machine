variable "dev_test_linux_virtual_machines" {
  description = <<EOT
Map of dev_test_linux_virtual_machines, attributes below
Required:
    - lab_name
    - lab_subnet_name
    - lab_virtual_network_id
    - location
    - name
    - resource_group_name
    - size
    - storage_type
    - username
    - gallery_image_reference (block):
        - offer (required)
        - publisher (required)
        - sku (required)
        - version (required)
Optional:
    - allow_claim
    - disallow_public_ip_address
    - notes
    - password
    - ssh_key
    - tags
    - inbound_nat_rule (block):
        - backend_port (required)
        - protocol (required)
EOT

  type = map(object({
    lab_name                   = string
    lab_subnet_name            = string
    lab_virtual_network_id     = string
    location                   = string
    name                       = string
    resource_group_name        = string
    size                       = string
    storage_type               = string
    username                   = string
    allow_claim                = optional(bool, true)
    disallow_public_ip_address = optional(bool)
    notes                      = optional(string)
    password                   = optional(string)
    ssh_key                    = optional(string)
    tags                       = optional(map(string))
    gallery_image_reference = object({
      offer     = string
      publisher = string
      sku       = string
      version   = string
    })
    inbound_nat_rule = optional(object({
      backend_port = number
      protocol     = string
    }))
  }))
}

