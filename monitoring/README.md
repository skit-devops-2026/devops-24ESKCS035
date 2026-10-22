# Monitoring Architecture & Setup

This directory contains the Prometheus monitoring configuration and dashboard data for the Digital Twin Personal Finance application.

## Components

1. **Prometheus Server**: Scrapes metrics at 15-second intervals and stores time-series data.
2. **Nginx Prometheus Exporter**: Reads `/stub_status` from the Nginx web container and translates basic Nginx stats into standard Prometheus metrics.
3. **Grafana Dashboard**: Visualizes active client connections, accepted/handled requests, request throughput, and application health.

## Scrape Targets

| Target | Port | Path | Purpose |
|---|---|---|---|
| `prometheus` | 9090 | `/metrics` | Prometheus internal self-monitoring |
| `nginx-exporter` | 9113 | `/metrics` | Nginx connections, requests, and states |
| `web` | 80 | `/health` | Container HTTP liveness & commit status |

## Running Locally

To start the monitoring stack together with the application:

```bash
docker compose up -d
```

- Web App: `http://localhost:8080`
- Web Health Endpoint: `http://localhost:8080/health`
- Prometheus UI: `http://localhost:9090`
- Nginx Exporter Metrics: `http://localhost:9113/metrics`
