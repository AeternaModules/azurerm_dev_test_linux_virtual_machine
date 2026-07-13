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
    - password_key_vault_id (alternative to password - read from Key Vault instead)
    - password_key_vault_secret_name (alternative to password - read from Key Vault instead)
    - ssh_key
    - tags
    - inbound_nat_rule (block):
        - backend_port (required)
        - protocol (required)
EOT

  type = map(object({
    lab_name                       = string
    lab_subnet_name                = string
    lab_virtual_network_id         = string
    location                       = string
    name                           = string
    resource_group_name            = string
    size                           = string
    storage_type                   = string
    username                       = string
    allow_claim                    = optional(bool)
    disallow_public_ip_address     = optional(bool)
    notes                          = optional(string)
    password                       = optional(string)
    password_key_vault_id          = optional(string)
    password_key_vault_secret_name = optional(string)
    ssh_key                        = optional(string)
    tags                           = optional(map(string))
    gallery_image_reference = object({
      offer     = string
      publisher = string
      sku       = string
      version   = string
    })
    inbound_nat_rule = optional(list(object({
      backend_port = number
      protocol     = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.dev_test_linux_virtual_machines : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.dev_test_linux_virtual_machines : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.dev_test_linux_virtual_machines : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.dev_test_linux_virtual_machines : (
        contains(["Standard", "Premium"], v.storage_type)
      )
    ])
    error_message = "must be one of: Standard, Premium"
  }
  validation {
    condition = alltrue([
      for k, v in var.dev_test_linux_virtual_machines : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 9 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

