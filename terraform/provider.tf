provider "google" {
  credentials = file("path-to-your-credentials-file.json")
  project     = "TechChallenge"
  region      = "us-central1"
}
