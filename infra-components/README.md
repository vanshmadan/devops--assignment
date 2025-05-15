# 🌐 DigitalOcean Terraform Infrastructure

This repository provisions infrastructure on **DigitalOcean** using **Terraform**, including:

- 🚀 A Kubernetes Cluster (DOKS)
- 📦 A Container Registry (DOCR)

All modules are written with best practices in mind: they are reusable, configurable via variables, and follow modular structure.

---

## 📁 Structure

```bash
infra-components/
├── main.tf
├── provider.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── modules/
│   ├── doks_cluster/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   └── container_registry/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
```

---

## 🧪 Prerequisites

- [Terraform](https://www.terraform.io/downloads) ≥ 1.3
- A [DigitalOcean API token](https://cloud.digitalocean.com/account/api/tokens)
- `kubectl` (optional, to access the cluster)

---

## 🔐 Authentication

Set your DigitalOcean token in an environment variable:

```bash
export DIGITALOCEAN_TOKEN="your_token_here"
```

---

## 🛠️ Setup Instructions

### 1. Clone the repository

```bash
git clone https://github.com/vanshmadan/devops--assignment.git
cd devops--assignment/infra-component
```

### 2. Configure your variables

Edit `terraform.tfvars` to match your desired config:

```hcl
cluster_name          = "at-apps-cluster"
region                = "blr1"            # Bangalore region
node_size             = "s-2vcpu-4gb"
node_count            = 1
registry_name         = "at-apps-registry"
subscription_tier_slug = "basic"
do_token = "add token here for digital ocean"
```

### 3. Initialize Terraform

```bash
terraform init
```

### 4. Apply the configuration

```bash
terraform apply
```

---

## 📤 Outputs

After successful deployment, you will see:

- `kubeconfig`: Your raw Kubernetes config (base64)
- `registry_url`: URL to your DigitalOcean Container Registry

Example:

```bash
terraform output -raw kubeconfig > kubeconfig.yaml
export KUBECONFIG=kubeconfig.yaml
kubectl get nodes
```

---


## 🧹 Cleanup

To destroy the provisioned resources:

```bash
terraform destroy
```

---

## 📚 References

- [DigitalOcean Terraform Provider](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs)
- [DigitalOcean Container Registry](https://docs.digitalocean.com/products/container-registry/)
- [DOKS Overview](https://docs.digitalocean.com/products/kubernetes/)

---
