output "storage_default_object_acls_id" {
  description = "Map of id values across all storage_default_object_acls, keyed the same as var.storage_default_object_acls except keys with no id are omitted"
  value       = { for k, v in google_storage_default_object_acl.storage_default_object_acls : k => v.id if v.id != null && length(v.id) > 0 }
}
output "storage_default_object_acls_bucket" {
  description = "Map of bucket values across all storage_default_object_acls, keyed the same as var.storage_default_object_acls except keys with no bucket are omitted"
  value       = { for k, v in google_storage_default_object_acl.storage_default_object_acls : k => v.bucket if v.bucket != null && length(v.bucket) > 0 }
}
output "storage_default_object_acls_deletion_policy" {
  description = "Map of deletion_policy values across all storage_default_object_acls, keyed the same as var.storage_default_object_acls except keys with no deletion_policy are omitted"
  value       = { for k, v in google_storage_default_object_acl.storage_default_object_acls : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "storage_default_object_acls_role_entity" {
  description = "Map of role_entity values across all storage_default_object_acls, keyed the same as var.storage_default_object_acls except keys with no role_entity are omitted"
  value       = { for k, v in google_storage_default_object_acl.storage_default_object_acls : k => v.role_entity if v.role_entity != null && length(v.role_entity) > 0 }
}

