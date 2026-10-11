variable "license_manager_license_records_lookup" {
  description = <<EOT
Map of license_manager_license_records_lookup, attributes below
Required:
    - product_license_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    product_license_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

