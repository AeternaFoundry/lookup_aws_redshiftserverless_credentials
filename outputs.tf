output "redshiftserverless_credentials_lookup_id" {
  description = "Map of id values across all redshiftserverless_credentials_lookup, keyed the same as var.redshiftserverless_credentials_lookup"
  value       = { for k, v in data.aws_redshiftserverless_credentials.redshiftserverless_credentials_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "redshiftserverless_credentials_lookup_db_name" {
  description = "Map of db_name values across all redshiftserverless_credentials_lookup, keyed the same as var.redshiftserverless_credentials_lookup"
  value       = { for k, v in data.aws_redshiftserverless_credentials.redshiftserverless_credentials_lookup : k => v.db_name if v.db_name != null && length(v.db_name) > 0 }
}
output "redshiftserverless_credentials_lookup_db_password" {
  description = "Map of db_password values across all redshiftserverless_credentials_lookup, keyed the same as var.redshiftserverless_credentials_lookup"
  value       = { for k, v in data.aws_redshiftserverless_credentials.redshiftserverless_credentials_lookup : k => v.db_password if v.db_password != null && length(v.db_password) > 0 }
  sensitive   = true
}
output "redshiftserverless_credentials_lookup_db_user" {
  description = "Map of db_user values across all redshiftserverless_credentials_lookup, keyed the same as var.redshiftserverless_credentials_lookup"
  value       = { for k, v in data.aws_redshiftserverless_credentials.redshiftserverless_credentials_lookup : k => v.db_user if v.db_user != null && length(v.db_user) > 0 }
}
output "redshiftserverless_credentials_lookup_duration_seconds" {
  description = "Map of duration_seconds values across all redshiftserverless_credentials_lookup, keyed the same as var.redshiftserverless_credentials_lookup"
  value       = { for k, v in data.aws_redshiftserverless_credentials.redshiftserverless_credentials_lookup : k => v.duration_seconds if v.duration_seconds != null }
}
output "redshiftserverless_credentials_lookup_expiration" {
  description = "Map of expiration values across all redshiftserverless_credentials_lookup, keyed the same as var.redshiftserverless_credentials_lookup"
  value       = { for k, v in data.aws_redshiftserverless_credentials.redshiftserverless_credentials_lookup : k => v.expiration if v.expiration != null && length(v.expiration) > 0 }
}
output "redshiftserverless_credentials_lookup_region" {
  description = "Map of region values across all redshiftserverless_credentials_lookup, keyed the same as var.redshiftserverless_credentials_lookup"
  value       = { for k, v in data.aws_redshiftserverless_credentials.redshiftserverless_credentials_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "redshiftserverless_credentials_lookup_workgroup_name" {
  description = "Map of workgroup_name values across all redshiftserverless_credentials_lookup, keyed the same as var.redshiftserverless_credentials_lookup"
  value       = { for k, v in data.aws_redshiftserverless_credentials.redshiftserverless_credentials_lookup : k => v.workgroup_name if v.workgroup_name != null && length(v.workgroup_name) > 0 }
}

