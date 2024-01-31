output "vpc_id" {
  description = "O ID da VPC"
  value       = google_compute_network.vpc.id
}

output "subnet_ids" {
  description = "Os IDs das sub-redes"
  value       = google_compute_subnetwork.subnetwork.id
}

output "cluster_endpoint" {
  description = "Ponto de extremidade para o plano de controle do GKE."
  value       = google_container_cluster.cluster.endpoint
}

output "cluster_ca_certificate" {
  description = "O certificado ca do cluster (codificado em base64)"
  value       = google_container_cluster.cluster.master_auth.0.cluster_ca_certificate
}
