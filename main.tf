data "aws_redshiftserverless_credentials" "redshiftserverless_credentials_lookup" {
  for_each = var.redshiftserverless_credentials_lookup

  workgroup_name   = each.value.workgroup_name
  db_name          = each.value.db_name
  duration_seconds = each.value.duration_seconds
  region           = each.value.region
}

