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
  # --- Unconfirmed validation candidates, derived from azurerm_redis_firewall_rule's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.FirewallRuleName] !matched
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
  # path: start_ip
  #   source:    validation.All(...) - no translation rule yet, add one
  # path: end_ip
  #   source:    validation.All(...) - no translation rule yet, add one
}

