resource "datadog_application_key" "application_keys" {
  for_each = var.application_keys

  name   = each.value.name
  scopes = each.value.scopes
}

