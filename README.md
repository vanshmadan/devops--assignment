# ⚙️ Flask App Deployment to DOKS using Jenkins

This repository defines a **Jenkins pipeline** that:

- Builds and tags a Docker image for a Flask application
- Pushes it to **DigitalOcean Container Registry (DOCR)**
- Deploys it to a **DigitalOcean Kubernetes Service (DOKS)** cluster
- Verifies the deployment via a health check

All steps are modularized using **Jenkins Shared Libraries** and leverage the **Kubernetes CLI Plugin** for secure `kubectl` access.

---

## 🔧 Prerequisites

### Jenkins Plugins Required

Install these plugins from **Manage Jenkins > Plugin Manager**:

-  **Docker Pipeline**
-  **Credentials Binding Plugin**
-  **Kubernetes CLI Plugin**
-  **Pipeline: Declarative + Groovy Libraries**
-  **Git + GitHub plugins**

---

### Jenkins Credentials Setup

Go to **Manage Jenkins > Credentials > Global** and add the following:

| Name/ID      | Type         | Description                                       |
|--------------|--------------|---------------------------------------------------|
| `do-api-token` | Secret Text | DigitalOcean API Token with DOCR access           |
| `kubeconfig`   | Secret File | Static `kubeconfig.yaml` (without doctl exec)     |

---

## Repository Structure

├── Jenkinsfile # Main declarative pipeline
├── DevOpsHiring/ # Dockerfile and app
│ ├── Dockerfile
│ └── app.py
│ ├── requirements.txt
│ ├── docker-compose.yaml

├── kubennetes-yamls/ # Kubernetes manifests
│ ├── deployment.yaml
│ ├── service.yaml
│ └── configmap.yaml

├── infra-components/ # terraform files
│ ├── cluster.tf
│ ├── container-registry.tf
│ └── variables.tf
│ ├── terraform.tfvars
│ ├── modules/



