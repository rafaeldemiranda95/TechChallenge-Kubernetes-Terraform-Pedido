provider "google" {
  credentials = file("path-to-your-credentials-file.json")
  project     = "your-gcp-project-id"
  region      = "us-west1" # Escolha a região adequada
}
