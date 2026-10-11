output "group_memberships_id" {
  description = "Map of id values across all group_memberships, keyed the same as var.group_memberships except keys with no id are omitted"
  value       = { for k, v in okta_group_memberships.group_memberships : k => v.id if v.id != null && length(v.id) > 0 }
}
output "group_memberships_group_id" {
  description = "Map of group_id values across all group_memberships, keyed the same as var.group_memberships except keys with no group_id are omitted"
  value       = { for k, v in okta_group_memberships.group_memberships : k => v.group_id if v.group_id != null && length(v.group_id) > 0 }
}
output "group_memberships_track_all_users" {
  description = "Map of track_all_users values across all group_memberships, keyed the same as var.group_memberships except keys with no track_all_users are omitted"
  value       = { for k, v in okta_group_memberships.group_memberships : k => v.track_all_users if v.track_all_users != null }
}
output "group_memberships_users" {
  description = "Map of users values across all group_memberships, keyed the same as var.group_memberships except keys with no users are omitted"
  value       = { for k, v in okta_group_memberships.group_memberships : k => v.users if v.users != null && length(v.users) > 0 }
}

