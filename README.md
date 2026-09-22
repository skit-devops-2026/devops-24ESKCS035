# Digital Twin for Personal Finance

[![CI Pipeline](https://github.com/skit-devops-2026/devops-24ESKCS035/actions/workflows/ci.yml/badge.svg)](https://github.com/skit-devops-2026/devops-24ESKCS035/actions/workflows/ci.yml)
[![Node.js Version](https://img.shields.io/badge/node-%3E%3D20.0.0-brightgreen.svg)](https://nodejs.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![DevOps Assessment](https://img.shields.io/badge/SKIT%20DevOps-MT1%20Modules%201--4-orange.svg)](https://github.com/skit-devops-2026)

## Author

| Roll No. | Name | GitHub username |
|---|---|---|
| 24ESKCS035 | Akshay Agrawal | akshayagr-13 |

## Academic & Course Information

- **Student Name**: Akshay Agrawal
- **University Roll Number**: 24ESKCS035
- **Institution**: Swami Keshvanand Institute of Technology, Management & Gramothan (SKIT), Jaipur
- **Course**: DevOps 2026
- **Assessment**: Mid-Term 1 (MT1) - Modules 1 to 4
- **GitHub Repository**: [skit-devops-2026/devops-24ESKCS035](https://github.com/skit-devops-2026/devops-24ESKCS035)

## About

Twinfin is a dependency-free Personal Finance Digital Twin and analytical dashboard designed to simulate and track personal wealth. It features real-time net worth projection, monthly cashflow analytics, savings goal monitoring, and multi-factor financial health score calculation. The application operates with zero external runtime dependencies using modern web standards and native Node.js automation.

## Tech stack

- Frontend: HTML5, Vanilla JavaScript (ES6+), Modern CSS3, Inline SVG Charts
- Backend & Testing: Node.js (Built-in Test Runner node:test, Native Assertions node:assert/strict)
- CI/CD & Automation: GitHub Actions, Declarative Jenkins Pipeline, Make

## Running locally

```bash
make install
make run
```

Alternatively, run tests and lint checks directly via npm:

```bash
npm test
npm run lint
```

## Live URL

Pending deployment in Module 5 (M5). Until then, access locally via static HTTP server.

## Health endpoint

`GET /health` returns the running commit SHA. See `Makefile` and the milestone sheet for why this is required.

---

## Directory Structure

```
devops-24ESKCS035/
+-- .github/
¦   +-- workflows/
¦       +-- ci.yml               # GitHub Actions CI pipeline (lint, audit, tests)
+-- assets/
¦   +-- screenshots/             # Visual previews of dashboard and charts
+-- css/
¦   +-- style.css                # Design system tokens, layout & responsive UI
+-- js/
¦   +-- charts.js                # Dependency-free SVG chart rendering engine
¦   +-- data.js                  # Centralized data store and financial calculations
¦   +-- nav.js                   # Shared navigation bar injector
+-- tests/
¦   +-- charts.test.js           # SVG generation unit tests
¦   +-- finance.test.js          # Financial calculation & health metrics tests
¦   +-- schema.test.js           # Data integrity & schema validation tests
+-- .gitignore                   # Excludes build artifacts, secrets, and node_modules
+-- dashboard.html               # Cash flow, health score & category breakdown
+-- goals.html                   # Savings goal progress and contribution trackers
+-- index.html                   # Application landing page & feature overview
+-- Jenkinsfile                  # Declarative Jenkins CI/CD pipeline definition
+-- Makefile                     # Build and execution task runner
+-- package.json                 # Project configuration, scripts, and dependencies
+-- planner.html                 # Financial calendar & scheduled bill tracker
+-- profile.html                 # 4-tab user settings & security panel
+-- README.md                    # Project and assessment documentation
+-- reports.html                 # Long-term trends & category distribution
+-- scripts/
¦   +-- hygiene.sh               # Repository hygiene and verification script
+-- transactions.html            # Searchable ledger with sorting and CSV export
```

---

## Repository Management & Cleanliness (Module 1)

This repository adheres to strict DevOps repository hygiene standards:

1. **Clean Tracking**: Zero build artifacts (`node_modules/`, `dist/`, `build/`), virtual environments (`venv/`, `.venv/`), temporary OS files (`.DS_Store`), or credentials are committed to version control.
2. **Comprehensive `.gitignore`**: Implemented standard exclusions for JavaScript, Python, IDEs, and build outputs.
3. **Commit History**: Commits are distributed across multiple development dates (September 10, September 11, September 12, September 13, 2026), reflecting iterative software development.
4. **Hygiene Script**: Verified with `scripts/hygiene.sh` passing all repository checks with 0 errors.

---

## Branching & Pull Request Strategy (Module 2)

All changes are integrated into `main` deliberately through feature branches and Pull Requests with comprehensive descriptions. The repository maintains active feature branches alongside `main`:

| PR # | Branch | Description | Status |
| :--- | :--- | :--- | :--- |
| **#1** | `feature/repo-setup-metadata` | Repository setup, comprehensive `.gitignore`, `package.json`, and clean asset structure | Merged |
| **#2** | `feature/automated-testing-suite` | Automated unit test suite (`finance`, `charts`, `schema`) and module export support | Merged |
| **#3** | `feature/ci-workflow` | GitHub Actions CI workflow configuration, matrix builds, and cleanliness audits | Merged |
| **#4** | `feature/budget-guardrails` | Budget guardrail testing and emergency fund safety threshold calibration | Merged |
| **#5** | `feature/jenkins-pipeline` | Declarative `Jenkinsfile` implementation for local and CI automated builds | Merged |
| **#6** | `feature/documentation` | Complete project documentation, student metadata, and viva guides | Merged |

---

## Automated Testing Suite (Module 3)

The project includes an automated unit testing suite powered by the Node.js native test runner (`node:test` and `node:assert/strict`), requiring zero external dependencies.

### Running Tests Locally

Execute the test suite:
```bash
npm test
```

Execute code syntax and lint validation:
```bash
npm run lint
```

### Test Coverage Breakdown

- **`tests/finance.test.js`**:
  - Currency formatting (`fmtMoney`) with positive/negative signs and zero decimals.
  - Net worth growth trajectory and data point parity.
  - Cashflow positive delta verification across all historical months.
  - Category percentage budget allocations.
  - Multi-metric financial health score validation and baseline safety thresholds.
  - Emergency fund coverage validation (>= 80).
  - Savings allocation percentage total verification (= 100%).
  - Spending category actual vs budget variance alignment.
  - Budget guardrails enforcing monthly income outpaces expenditures with at least a 20% savings margin.
- **`tests/charts.test.js`**:
  - Number scaling formatting (`_fmtK`).
  - SVG Line chart rendering (`SVG tag`, `viewBox`, `polyline tag`, points, dots).
  - SVG Bar chart grouping and bar coordinates.
  - SVG Ring progress gauge rendering.
  - SVG Donut chart slice calculation.
- **`tests/schema.test.js`**:
  - User profile schema and contact formatting.
  - Savings goals targets and current savings balance validation.
  - Transaction ledger fields (description, merchant, date, amount, account).

---

## Continuous Integration Pipeline (Module 3)

The CI pipeline is automated via GitHub Actions (`.github/workflows/ci.yml`) and triggers on every push and pull request.

### Pipeline Workflow Stages

1. **Repository Audit & Syntax Lint**:
   - Checks that no prohibited artifacts (`node_modules`, `dist`, `build`, `venv`, `.DS_Store`) exist in the repository.
   - Validates JavaScript syntax across all source and test files (`npm run lint`).
2. **Automated Unit Tests**:
   - Executes `npm test` across a build matrix of Node.js versions (**Node 20.x** and **Node 22.x**).
   - Generates markdown test summaries in the GitHub Actions dashboard.
3. **Execution History**:
   - Maintains continuous successful passing runs on `main` and all feature branches.
   - Latest run on `main` is completely **PASSING (GREEN)**.

---

## Jenkins Pipeline (Module 4)

A production-ready declarative pipeline is specified in [`Jenkinsfile`](Jenkinsfile).

### Jenkins Pipeline Stages

```
+-----------------+     +---------------------+     +---------------------+
|  Checkout SCM   | --> | Cleanliness Audit   | --> | Syntax & Linting    |
+-----------------+     +---------------------+     +---------------------+
                                                               |
+-----------------+     +---------------------+                |
| Package Release | <-- |  Automated Tests    | <--------------+
+-----------------+     +---------------------+
```

1. **Checkout Code**: Pulls repository source via SCM.
2. **Audit Cleanliness**: Confirms absence of forbidden build directories.
3. **Verify Syntax & Lint**: Runs `npm run lint`.
4. **Execute Unit Tests**: Executes `npm test` with Node.js test runner.
5. **Package Release**: Stages a clean production package (`twinfin-release.tar.gz`) excluding `.git` and development workflows.

### How to Run in Local Jenkins for the Viva

1. Ensure Jenkins is running locally (e.g., at `http://localhost:8080`).
2. Create a new **Pipeline** job named `devops-24ESKCS035-digital-twin`.
3. In **Pipeline Definition**, choose **Pipeline script from SCM**.
4. Select **Git** as the SCM and enter the repository URL:
   `https://github.com/skit-devops-2026/devops-24ESKCS035.git`
5. Set the branch specifier to `*/main`.
6. Set Script Path to `Jenkinsfile`.
7. Click **Build Now** to execute the pipeline live during the viva.

---

## Running the Web Application Locally

The application is static and requires no compilation step.

### Option 1: Direct Browser Access
Double-click `index.html` or open it directly in any modern web browser (Chrome, Firefox, Safari, Edge).

### Option 2: Local HTTP Server
Run a static server using Python:
```bash
python -m http.server 8000
```
Open [http://localhost:8000](http://localhost:8000) in your web browser to explore the dashboard.
