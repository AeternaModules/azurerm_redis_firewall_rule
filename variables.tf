variable "redis_firewall_rules" {
  description = <<EOT
Map of redis_firewall_rules, attributes below
Required:
    - end_ip
    - name
    - redis_cache_name
    - resource_group_name
    - start_ip
EOT

  type = map(object({
    end_ip              = string
    name                = string
    redis_cache_name    = string
    resource_group_name = string
    start_ip            = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.redis_firewall_rules : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.redis_firewall_rules : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.redis_firewall_rules : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

