output "kubeconfig" {
  description = "Raw Kubeconfig to connect to the cluster"
  value       = digitalocean_kubernetes_cluster.this.kube_config[0].raw_config
}
