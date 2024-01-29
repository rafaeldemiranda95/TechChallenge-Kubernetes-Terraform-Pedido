provider "google" {  credentials = file("path-to-your-credentials-file.json")
  project     = "your-gcp-project-id"
  region      = "us-central1" 
}
