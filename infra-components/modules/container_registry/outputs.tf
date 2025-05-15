output "registry_url" {
  description = "The endpoint URL of the container registry"
  value       = digitalocean_container_registry.this.endpoint
}
