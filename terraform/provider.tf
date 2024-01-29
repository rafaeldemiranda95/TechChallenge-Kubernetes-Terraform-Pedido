provider "google" {
  credentials = jsondecode(base64decode(var.google_application_credentials))
  project     = "TechChallenge"
  region      = "us-central1"
}
