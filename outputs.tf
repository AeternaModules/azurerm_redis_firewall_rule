output "redis_firewall_rules" {
  description = "All redis_firewall_rule resources"
  value       = azurerm_redis_firewall_rule.redis_firewall_rules
}
output "redis_firewall_rules_end_ip" {
  description = "List of end_ip values across all redis_firewall_rules"
  value       = [for k, v in azurerm_redis_firewall_rule.redis_firewall_rules : v.end_ip]
}
output "redis_firewall_rules_name" {
  description = "List of name values across all redis_firewall_rules"
  value       = [for k, v in azurerm_redis_firewall_rule.redis_firewall_rules : v.name]
}
output "redis_firewall_rules_redis_cache_name" {
  description = "List of redis_cache_name values across all redis_firewall_rules"
  value       = [for k, v in azurerm_redis_firewall_rule.redis_firewall_rules : v.redis_cache_name]
}
output "redis_firewall_rules_resource_group_name" {
  description = "List of resource_group_name values across all redis_firewall_rules"
  value       = [for k, v in azurerm_redis_firewall_rule.redis_firewall_rules : v.resource_group_name]
}
output "redis_firewall_rules_start_ip" {
  description = "List of start_ip values across all redis_firewall_rules"
  value       = [for k, v in azurerm_redis_firewall_rule.redis_firewall_rules : v.start_ip]
}

