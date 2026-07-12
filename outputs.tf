output "redis_firewall_rules_id" {
  description = "Map of id values across all redis_firewall_rules, keyed the same as var.redis_firewall_rules"
  value       = { for k, v in azurerm_redis_firewall_rule.redis_firewall_rules : k => v.id }
}
output "redis_firewall_rules_end_ip" {
  description = "Map of end_ip values across all redis_firewall_rules, keyed the same as var.redis_firewall_rules"
  value       = { for k, v in azurerm_redis_firewall_rule.redis_firewall_rules : k => v.end_ip }
}
output "redis_firewall_rules_name" {
  description = "Map of name values across all redis_firewall_rules, keyed the same as var.redis_firewall_rules"
  value       = { for k, v in azurerm_redis_firewall_rule.redis_firewall_rules : k => v.name }
}
output "redis_firewall_rules_redis_cache_name" {
  description = "Map of redis_cache_name values across all redis_firewall_rules, keyed the same as var.redis_firewall_rules"
  value       = { for k, v in azurerm_redis_firewall_rule.redis_firewall_rules : k => v.redis_cache_name }
}
output "redis_firewall_rules_resource_group_name" {
  description = "Map of resource_group_name values across all redis_firewall_rules, keyed the same as var.redis_firewall_rules"
  value       = { for k, v in azurerm_redis_firewall_rule.redis_firewall_rules : k => v.resource_group_name }
}
output "redis_firewall_rules_start_ip" {
  description = "Map of start_ip values across all redis_firewall_rules, keyed the same as var.redis_firewall_rules"
  value       = { for k, v in azurerm_redis_firewall_rule.redis_firewall_rules : k => v.start_ip }
}

