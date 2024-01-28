output "vpc_id" {
  description = "O ID da VPC criada"
  value       = google_compute_network.vpc.id
}

output "subnet_id" {
  description = "O ID da sub-rede criada"
  value       = google_compute_subnetwork.subnetwork.id
}

output "cluster_endpoint" {
  description = "O endpoint do plano de controle do Kubernetes Engine (GKE)"
  value       = google_container_cluster.cluster.endpoint
}

output "cluster_ca_certificate" {
  description = "O certificado CA do cluster do Kubernetes Engine (GKE), codificado em base64"
  value       = google_container_cluster.cluster.master_auth[0].cluster_ca_certificate
}

output "cluster_name" {
  description = "O nome do cluster do Kubernetes Engine (GKE)"
  value       = google_container_cluster.cluster.name
}

output "cluster_location" {
  description = "A localização (região ou zona) do cluster do Kubernetes Engine (GKE)"
  value       = google_container_cluster.cluster.location
}

output "node_pool_name" {
  description = "O nome do pool de nós do cluster do Kubernetes Engine (GKE)"
  value       = google_container_cluster.cluster.node_pool[0].name
}

output "vpc_self_link" {
  description = "O self link da VPC criada"
  value       = google_compute_network.vpc.self_link
}

output "subnet_self_link" {
  description = "O self link da sub-rede criada"
  value       = google_compute_subnetwork.subnetwork.self_link
}
