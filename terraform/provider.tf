provider "google" {
  credentials = jsondecode(base64decode(var.google_credentials))
  project     = "TechChallenge"
  region      = "us-central1"
}
