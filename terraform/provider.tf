provider "google" {
  credentials = file(var.google_application_credentials)
  project     = "TechChallenge"
  region      = "us-central1"
}
