# Outputs after infrastructure is created

output "kubeconfig" {
  description = "Kubeconfig for accessing the cluster"
  value       = module.doks_cluster.kubeconfig
  sensitive   = true
}

output "registry_url" {
  description = "DigitalOcean container registry URL"
  value       = module.container_registry.registry_url
}
