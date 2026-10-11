data "oci_license_manager_license_records" "license_manager_license_records_lookup" {
  for_each = var.license_manager_license_records_lookup

  product_license_id = each.value.product_license_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

