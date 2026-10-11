variable "storage_default_object_acls" {
  description = <<EOT
Map of storage_default_object_acls, attributes below
Required:
    - bucket
Optional:
    - deletion_policy
    - role_entity
EOT

  type = map(object({
    bucket          = string
    deletion_policy = optional(string)
    role_entity     = optional(set(string))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

