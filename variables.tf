variable "group_memberships" {
  description = <<EOT
Map of group_memberships, attributes below
Required:
    - group_id
    - users
Optional:
    - track_all_users
EOT

  type = map(object({
    group_id        = string
    users           = set(string)
    track_all_users = optional(bool)
  }))
}

