output "redis_firewall_rules_id" {
  description = "Map of id values across all redis_firewall_rules, keyed the same as var.redis_firewall_rules"
  value       = { for k, v in azurerm_redis_firewall_rule.redis_firewall_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "redis_firewall_rules_end_ip" {
  description = "Map of end_ip values across all redis_firewall_rules, keyed the same as var.redis_firewall_rules"
  value       = { for k, v in azurerm_redis_firewall_rule.redis_firewall_rules : k => v.end_ip if v.end_ip != null && length(v.end_ip) > 0 }
}
output "redis_firewall_rules_name" {
  description = "Map of name values across all redis_firewall_rules, keyed the same as var.redis_firewall_rules"
  value       = { for k, v in azurerm_redis_firewall_rule.redis_firewall_rules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "redis_firewall_rules_redis_cache_name" {
  description = "Map of redis_cache_name values across all redis_firewall_rules, keyed the same as var.redis_firewall_rules"
  value       = { for k, v in azurerm_redis_firewall_rule.redis_firewall_rules : k => v.redis_cache_name if v.redis_cache_name != null && length(v.redis_cache_name) > 0 }
}
output "redis_firewall_rules_resource_group_name" {
  description = "Map of resource_group_name values across all redis_firewall_rules, keyed the same as var.redis_firewall_rules"
  value       = { for k, v in azurerm_redis_firewall_rule.redis_firewall_rules : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "redis_firewall_rules_start_ip" {
  description = "Map of start_ip values across all redis_firewall_rules, keyed the same as var.redis_firewall_rules"
  value       = { for k, v in azurerm_redis_firewall_rule.redis_firewall_rules : k => v.start_ip if v.start_ip != null && length(v.start_ip) > 0 }
}

