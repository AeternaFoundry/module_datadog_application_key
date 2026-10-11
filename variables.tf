variable "application_keys" {
  description = <<EOT
Map of application_keys, attributes below
Required:
    - name
Optional:
    - scopes
EOT

  type = map(object({
    name   = string
    scopes = optional(set(string))
  }))
}

