module "doks_cluster" {
  source       = "./modules/doks_cluster"
  cluster_name = var.cluster_name
  region       = var.region
  cluster_version = var.cluster_version
  node_size    = var.node_size
  node_count   = var.node_count
}

