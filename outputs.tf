output "application_keys_id" {
  description = "Map of id values across all application_keys, keyed the same as var.application_keys except keys with no id are omitted"
  value       = { for k, v in datadog_application_key.application_keys : k => v.id if v.id != null && length(v.id) > 0 }
}
output "application_keys_key" {
  description = "Map of key values across all application_keys, keyed the same as var.application_keys except keys with no key are omitted"
  value       = { for k, v in datadog_application_key.application_keys : k => v.key if v.key != null && length(v.key) > 0 }
  sensitive   = true
}
output "application_keys_name" {
  description = "Map of name values across all application_keys, keyed the same as var.application_keys except keys with no name are omitted"
  value       = { for k, v in datadog_application_key.application_keys : k => v.name if v.name != null && length(v.name) > 0 }
}
output "application_keys_scopes" {
  description = "Map of scopes values across all application_keys, keyed the same as var.application_keys except keys with no scopes are omitted"
  value       = { for k, v in datadog_application_key.application_keys : k => v.scopes if v.scopes != null && length(v.scopes) > 0 }
}

