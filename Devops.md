# Full‑Stack Deployment

## 👤 Author

Prasad Bhoite
DevOps / Cloud Enthusiast

## 📌 Project Overview

- I independently designed and implemented this project as part of the DevOps Fresher Assessment to demonstrate my practical understanding of containerization, CI/CD automation, deployment, and documentation.
- The objective was to take a simple Hello World full‑stack application and transform it into a production‑ready, automated DevOps workflow using industry best practices.

## 🧱 Application Architecture

- Backend: Django REST API
- Frontend: React (Vite + TypeScript)
- Containerization: Docker & Docker Compose
- CI/CD: GitHub Actions
- Image Registry: Docker Hub
- Deployment Target: Local machine (Docker‑based)

## 📂 Repository Structure
```
.
├── backend/                 # Django backend source
│   └── Dockerfile           # Backend Dockerfile (non‑root)
├── frontend/                # React frontend source
│   └── Dockerfile           # Multi‑stage frontend Dockerfile
├── docker-compose.yml       # Service orchestration
├── .github/
│   └── workflows/
│       └── ci-cd.yml        # CI/CD pipeline
├── DEVOPS.md                # DevOps documentation (this file)
└── README.md
```
## ⚙️ Phase 1: Local Development Setup

### 🔹 Prerequisites

I installed and verified the following tools on my system:

- Git
- Docker Desktop
- Docker Compose
- Node.js
- Python 3.11+

Verification commands:
```
docker --version
docker compose version
git --version
```

## 🐳 Phase 2: Containerization

### 🔸 Backend (Django)

What I implemented:

- Lightweight Python base image
- Application runs as a non‑root user
- Exposed port 8000
- Clean and minimal Dockerfile

### 🔸 Frontend (React)

What I implemented:

- Multi‑stage build (Node.js → Nginx)
- Optimized final image size
- Static assets served via Nginx
- Exposed port 80

This ensures faster builds, smaller images, and better security.

### 🔗 Phase 3: Docker Compose Orchestration

I used Docker Compose to orchestrate the backend and frontend services.

**Environment Variables Used**

   - `DEBUG=false`

   - `VITE_API_URL=http://localhost:8000`

Run Command
```
docker compose up -d
```

Verification

- Frontend: http://localhost:3000
- Backend API: http://localhost:8000/api/hello/

🔄 Phase 4: CI/CD Automation (GitHub Actions)

I implemented a fully automated CI/CD pipeline using GitHub Actions.

**Workflow Behavior**

- Triggers automatically on every push to the main branch
- Builds Docker images for backend and frontend
- Pushes images to Docker Hub

**GitHub Secrets Used**


| Secret Name        | Purpose                   |
|--------------------|---------------------------|
| `DOCKER_USERNAME`  | Docker Hub username       |
| `DOCKER_PASSWORD`  | Docker Hub password       |

This ensures secure, automated image delivery without hardcoded credentials.

### 🚀 Phase 5: Automated Deployment

Instead of local builds, I deployed the application using pre‑built images from Docker Hub, proving true CI/CD integration.

Deployment Commands
```
docker compose down
docker compose pull
docker compose up -d
```
This confirms:

- CI pipeline output is used
- Deployment is reproducible
- No manual intervention is required

## 📸 Proof of Execution

- I captured the following evidence for submission:
- Application running in the browser
- Running containers using `docker ps`
- Successful GitHub Actions workflow execution

## 🐞 Troubleshooting & Problem Solving

**Issue 1: Port already allocated (8000)**

Cause: Existing container using the same port

Resolution:
```
docker compose down
```
**Issue 2: Docker image pull access denied**

Cause: Incorrect Docker Hub image reference

Resolution:

- Corrected image name in docker-compose.yml

- Authenticated using docker login

**Issue 3: Node.js / npm not recognized in PowerShell**

Cause: PATH not updated after installation

Resolution:

- Restarted system
- Manually verified PATH variables

## ✅ Final Outcome

- Containerization completed using best practices
- CI/CD pipeline fully automated
- Deployment reproducible from Docker Hub images
- Clear, professional documentation provided

🎯 This project demonstrates my ability to independently design, implement, troubleshoot, and document a real‑world DevOps workflow end‑to‑end.


✔ Troubleshooting evidence
