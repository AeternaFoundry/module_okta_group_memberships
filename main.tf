resource "okta_group_memberships" "group_memberships" {
  for_each = var.group_memberships

  group_id        = each.value.group_id
  users           = each.value.users
  track_all_users = each.value.track_all_users
}

