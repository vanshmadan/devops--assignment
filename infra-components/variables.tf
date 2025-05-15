variable "do_token" {
 type = string
}
########### Cluster Variables ##################
variable "cluster_name" {
  type = string
}

variable "region" {
  type = string
}

variable "node_size" {
  type = string
}

variable "node_count" {
  type = number
}

############ Registry Variables ##################

variable "registry_name" {
  type = string
}

variable "subscription_tier_slug" {
  description = "DigitalOcean container registry tier"
  type        = string
  default     = "basic"
}

variable "cluster_version" {
    type = string
    description = "digitalocean_kubernetes_cluster version"
    default = "1.32.2-do.1"
}
