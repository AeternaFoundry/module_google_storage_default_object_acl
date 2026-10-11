resource "google_storage_default_object_acl" "storage_default_object_acls" {
  for_each = var.storage_default_object_acls

  bucket          = each.value.bucket
  deletion_policy = each.value.deletion_policy
  role_entity     = each.value.role_entity
}

