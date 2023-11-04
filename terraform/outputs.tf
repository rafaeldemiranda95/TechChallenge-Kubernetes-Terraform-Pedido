output "vpc_id" {
  description = "The ID of the VPC"
  value       = google_compute_network.vpc.id
}

output "subnet_ids" {
  description = "The IDs of the subnets"
  value       = google_compute_subnetwork.subnetwork.id
}

output "cluster_endpoint" {
  description = "Endpoint for EKS control plane."
  value       = google_container_cluster.cluster.endpoint
}

output "cluster_ca_certificate" {
  description = "The cluster ca certificate (base64 encoded)"
  value       = google_container_cluster.cluster.master_auth.0.cluster_ca_certificate
}
