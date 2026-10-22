# Deployment Documentation

## Overview

The Digital Twin Personal Finance application is containerized with Docker and Nginx and deployed with continuous integration and automated container image publication.

## Deployment Architecture

```
GitHub Repository (main branch)
       │
       ▼
GitHub Actions CI
  ├── Repository Hygiene Check (hygiene.sh)
  ├── Build & Unit Tests (Node.js test suite)
  ├── Docker Image Build & Tagging
  └── Push to GitHub Container Registry (ghcr.io)
       │
       ▼
Container Registry & Production Deployments
  ├── Docker Compose (Local & Production Server)
  ├── Kubernetes Cluster (Deployment & Service NodePort)
  └── GitHub Pages (Static Web Hosting)
```

## Health Verification

The running application exposes a JSON health check:

```bash
curl http://localhost:8080/health
```

Expected response:
```json
{"status":"ok","commit":"<git-sha>"}
```

## Running the Container Locally

```bash
docker build -t digital-twin:local .
docker run -p 8080:80 digital-twin:local
```

Access the application at `http://localhost:8080`.
Access health status at `http://localhost:8080/health`.
