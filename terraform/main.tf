# Utiliza a VPC existente
data "google_compute_network" "vpc" {
  name = "tech-challenge-vpc"
}

# Utiliza a subrede existente, se necessário. Se não, remova esta seção e ajuste a referência no cluster.
data "google_compute_subnetwork" "subnetwork" {
  name   = "tech-challenge-subnetwork"
  region = "us-central1"
}

resource "google_container_cluster" "cluster" {
  name     = "tech-challenge-cluster"
  location = "us-central1"

  remove_default_node_pool = true

  network    = google_compute_network.vpc.name
  subnetwork = google_compute_subnetwork.subnetwork.name

  node_pool {
    name       = "tech-challenge-node-pool"
    node_count = 3

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
