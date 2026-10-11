variable "redshiftserverless_credentials_lookup" {
  description = <<EOT
Map of redshiftserverless_credentials_lookup, attributes below
Required:
    - workgroup_name
Optional:
    - db_name
    - duration_seconds
    - region
EOT

  type = map(object({
    workgroup_name   = string
    db_name          = optional(string)
    duration_seconds = optional(number)
    region           = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.redshiftserverless_credentials_lookup : (
        v.duration_seconds == null || (v.duration_seconds >= 900 && v.duration_seconds <= 3600)
      )
    ])
    error_message = "must be between 900 and 3600"
  }
}

