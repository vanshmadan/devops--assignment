# 🚀 Flask App Kubernetes Deployment

---

## 📦 Components

### 1. `deployment.yaml`

- Deploys the Flask app using the image:  
  `registry.digitalocean.com/at-apps-registry/flask-app:latest`
- Includes:
  - 2 replicas
  - Liveness and readiness probes
  - CPU/memory requests and limits
  - Environment variables via inline config or optional ConfigMap

### 2. `service.yaml`

- Exposes the app to the internet
- Uses **LoadBalancer** (for cloud) 
- Maps external port `80` to container port `5001`


### 3. `configmap.yaml` 

- Externalizes environment variables like `FLASK_ENV` and `PORT`
- Can be mounted in place of `env:` blocks in the deployment

---

## 🛠️  Instructions

### ✅ 1. Push Docker Image to DOCR

```bash
docker build -t flask-app .
docker tag flask-app registry.digitalocean.com/at-apps-registry/flask-app:latest
doctl registry login
docker push registry.digitalocean.com/at-apps-registry/flask-app:latest

![image](https://github.com/user-attachments/assets/b9536f69-2250-49ef-8133-706b7310c013)
