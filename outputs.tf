output "team_tokens_id" {
  description = "Map of id values across all team_tokens, keyed the same as var.team_tokens except keys with no id are omitted"
  value       = { for k, v in tfe_team_token.team_tokens : k => v.id if v.id != null && length(v.id) > 0 }
}
output "team_tokens_description" {
  description = "Map of description values across all team_tokens, keyed the same as var.team_tokens except keys with no description are omitted"
  value       = { for k, v in tfe_team_token.team_tokens : k => v.description if v.description != null && length(v.description) > 0 }
}
output "team_tokens_expired_at" {
  description = "Map of expired_at values across all team_tokens, keyed the same as var.team_tokens except keys with no expired_at are omitted"
  value       = { for k, v in tfe_team_token.team_tokens : k => v.expired_at if v.expired_at != null && length(v.expired_at) > 0 }
}
output "team_tokens_force_regenerate" {
  description = "Map of force_regenerate values across all team_tokens, keyed the same as var.team_tokens except keys with no force_regenerate are omitted"
  value       = { for k, v in tfe_team_token.team_tokens : k => v.force_regenerate if v.force_regenerate != null }
}
output "team_tokens_team_id" {
  description = "Map of team_id values across all team_tokens, keyed the same as var.team_tokens except keys with no team_id are omitted"
  value       = { for k, v in tfe_team_token.team_tokens : k => v.team_id if v.team_id != null && length(v.team_id) > 0 }
}
output "team_tokens_token" {
  description = "Map of token values across all team_tokens, keyed the same as var.team_tokens except keys with no token are omitted"
  value       = { for k, v in tfe_team_token.team_tokens : k => v.token if v.token != null && length(v.token) > 0 }
  sensitive   = true
}

