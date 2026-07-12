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
    allow_claim                    = optional(bool) # Default: true
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
  # --- Unconfirmed validation candidates, derived from azurerm_dev_test_linux_virtual_machine's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    validate.DevTestVirtualMachineName: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: lab_name
  #   source:    validate.DevTestLabName: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: storage_type
  #   condition: contains(["Standard", "Premium"], value)
  #   message:   must be one of: Standard, Premium
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

