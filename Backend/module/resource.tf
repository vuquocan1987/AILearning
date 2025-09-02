# Create a project resource
resource "supabase_project" "production" {
  organization_id   = "nqatlhwzzhlgycreqsit"
  name              = "AI-backend"
  database_password = "bk853f!S5@1234"
  # change region to north europe
  region            = "eu-north-1"

  lifecycle {
    ignore_changes = [database_password]
  }
}