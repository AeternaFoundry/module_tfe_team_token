resource "tfe_team_token" "team_tokens" {
  for_each = var.team_tokens

  team_id          = each.value.team_id
  description      = each.value.description
  expired_at       = each.value.expired_at
  force_regenerate = each.value.force_regenerate
}

