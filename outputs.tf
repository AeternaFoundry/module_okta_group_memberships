output "group_memberships_id" {
  description = "Map of id values across all group_memberships, keyed the same as var.group_memberships"
  value       = { for k, v in okta_group_memberships.group_memberships : k => v.id }
}
output "group_memberships_group_id" {
  description = "Map of group_id values across all group_memberships, keyed the same as var.group_memberships"
  value       = { for k, v in okta_group_memberships.group_memberships : k => v.group_id }
}
output "group_memberships_track_all_users" {
  description = "Map of track_all_users values across all group_memberships, keyed the same as var.group_memberships"
  value       = { for k, v in okta_group_memberships.group_memberships : k => v.track_all_users }
}
output "group_memberships_users" {
  description = "Map of users values across all group_memberships, keyed the same as var.group_memberships"
  value       = { for k, v in okta_group_memberships.group_memberships : k => v.users }
}

