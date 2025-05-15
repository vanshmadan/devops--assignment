module "container_registry" {
  source        = "./modules/container_registry"
  registry_name = var.registry_name
  subscription_tier_slug = var.subscription_tier_slug
}

