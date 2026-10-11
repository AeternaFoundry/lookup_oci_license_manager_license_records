output "license_manager_license_records_lookup_id" {
  description = "Map of id values across all license_manager_license_records_lookup, keyed the same as var.license_manager_license_records_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_license_manager_license_records.license_manager_license_records_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "license_manager_license_records_lookup_filter" {
  description = "Map of filter values across all license_manager_license_records_lookup, keyed the same as var.license_manager_license_records_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_license_manager_license_records.license_manager_license_records_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "license_manager_license_records_lookup_license_record_collection" {
  description = "Map of license_record_collection values across all license_manager_license_records_lookup, keyed the same as var.license_manager_license_records_lookup except keys with no license_record_collection are omitted"
  value       = { for k, v in data.oci_license_manager_license_records.license_manager_license_records_lookup : k => v.license_record_collection if v.license_record_collection != null && length(v.license_record_collection) > 0 }
}
output "license_manager_license_records_lookup_product_license_id" {
  description = "Map of product_license_id values across all license_manager_license_records_lookup, keyed the same as var.license_manager_license_records_lookup except keys with no product_license_id are omitted"
  value       = { for k, v in data.oci_license_manager_license_records.license_manager_license_records_lookup : k => v.product_license_id if v.product_license_id != null && length(v.product_license_id) > 0 }
}

