provider "google" {
  project = "tech-challenge"
  region  = "us-central1"
}
resource "google_compute_network" "vpc" {
  name                    = "tech-challenge-vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnetwork" {
  name          = "tech-challenge-subnetwork"
  ip_cidr_range = "10.0.1.0/24"
  region        = "us-central1"
  network       = google_compute_network.vpc.id
}

resource "google_container_cluster" "cluster" {
  name     = "tech-challenge-cluster"
  location = "us-central1"

  remove_default_node_pool = true
  initial_node_count       = 1

  node_pool {
    name       = "tech-challenge-node-pool"
    node_count = 1

    node_config {
      machine_type = "g1-small"
      oauth_scopes = [
        "https://www.googleapis.com/auth/compute",
        "https://www.googleapis.com/auth/devstorage.read_only",
        "https://www.googleapis.com/auth/logging.write",
        "https://www.googleapis.com/auth/monitoring"
      ]
    }
  }
}


