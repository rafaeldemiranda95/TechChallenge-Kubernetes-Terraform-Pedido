provider "google" {
  credentials = jsondecode(data.google_secret_manager_secret.secret.payload)
  project     = "TechChallenge"
  region      = "us-central1"
}

# data "google_secret_manager_secret" "secret" {
#   secret_manager_project = "TechChallenge"
#   secret_id              = "your-secret-id"
#   version_id             = "latest"
# }
