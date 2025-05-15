variable "registry_name" {
  description = "The name of the container registry"
  type        = string
}

variable "subscription_tier_slug" {
  description = "Tier of the container registry (starter/basic/professional)"
  type        = string
  default     = "basic"
}
