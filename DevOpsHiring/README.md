# ⚙️ Run local Developer Environment usinf Docker and Docker-compose

This directory has Dockerfile and docker-compose.yaml

## 🔧 Prerequisites
```
Docker
Docker-compose
```

### ✅ DockerFile breakdown:

- Used minimal hardened python image so that there is less vulnerable package installled.
- Added Environment variables :
    
   **PYTHONDONTWRITEBYTECODE=1**
   It doesnt allow compiled python codes to write on file system, doesnt there is no unncessary       cache of pvc files.
    

   **PYTHONUNBUFFERED=1**
    It forces python to output logs directly to stdout and stderr. which make logs available at real time using docker logs command/

- Switch to working directory and install required packages with pip and apt with no caching enabled
- Copy code
- Create non root user and switch to non root user
- Run the app as per app’s entrypoint

### ✅ DOCKER COMPOSE YAML BREAKDOWN :
- Live reload using watchdog
- Readable logs
- Source code mount
- Simple one-command startup

### Run application locally

```
docker-compose up

```
```-d``` flag can be used for detach mode
