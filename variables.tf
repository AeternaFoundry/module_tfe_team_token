variable "team_tokens" {
  description = <<EOT
Map of team_tokens, attributes below
Required:
    - team_id
Optional:
    - description
    - expired_at
    - force_regenerate
EOT

  type = map(object({
    team_id          = string
    description      = optional(string)
    expired_at       = optional(string)
    force_regenerate = optional(bool)
  }))
}

