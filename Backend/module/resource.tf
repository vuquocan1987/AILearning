# Create a project resource
resource "supabase_project" "production" {
  organization_id   = "nqatlhwzzhlgycreqsit"
  name              = "AI-backend"
  database_password = "placeholder because of lifecycle ignore changes"
  region            = "eu-north-1"

  lifecycle {
    ignore_changes = [database_password]
  }
}

resource "supabase_project" "staging" {
  organization_id   = "nqatlhwzzhlgycreqsit"
  name              = "AI-backend-staging"
  # set password to a tfvars in terraform cloud variable set
  database_password = "placeholder because of lifecycle ignore changes"
  region            = "eu-north-1"
  lifecycle {
    ignore_changes = [database_password]
  }
}