# Digital Twin for Personal Finance

[![CI Pipeline](https://github.com/skit-devops-2026/devops-24ESKCS035/actions/workflows/ci.yml/badge.svg)](https://github.com/skit-devops-2026/devops-24ESKCS035/actions/workflows/ci.yml)
[![Node.js Version](https://img.shields.io/badge/node-%3E%3D20.0.0-brightgreen.svg)](https://nodejs.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![DevOps Assessment](https://img.shields.io/badge/SKIT%20DevOps-Assessment-orange.svg)](https://github.com/skit-devops-2026)

## Author

| Roll No. | Name | GitHub username |
|---|---|---|
| 24ESKCS035 | Akshay Agrawal | akshayagr-13 |

## Academic & Course Information

- **Student Name**: Akshay Agrawal
- **University Roll Number**: 24ESKCS035
- **Institution**: Swami Keshvanand Institute of Technology, Management & Gramothan (SKIT), Jaipur
- **Course**: DevOps 2026
- **GitHub Repository**: [skit-devops-2026/devops-24ESKCS035](https://github.com/skit-devops-2026/devops-24ESKCS035)

## About

Twinfin is a dependency-free Personal Finance Digital Twin and analytical dashboard designed to simulate and track personal wealth. It features real-time net worth projection, monthly cashflow analytics, savings goal monitoring, and multi-factor financial health score calculation. The application operates with zero external runtime dependencies using modern web standards and native Node.js automation.

## Tech stack

- Frontend: HTML5, Vanilla JavaScript (ES6+), Modern CSS3, Inline SVG Charts
- Web Server / Container: Nginx (Alpine Linux)
- Backend & Testing: Node.js (Built-in Test Runner node:test, Native Assertions node:assert/strict)
- CI/CD & DevOps: GitHub Actions, Docker, Kubernetes, Prometheus, Declarative Jenkins Pipeline, Make

## Running locally

```bash
make install
make test
make run
```

Alternatively, run tests and lint checks directly via npm:

```bash
npm test
npm run lint
```

## Live URL

https://skit-devops-2026.github.io/devops-24ESKCS035/

## Health endpoint

`GET /health` returns the running commit SHA. See `Makefile` and the milestone
sheet for why this is required.