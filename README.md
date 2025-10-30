# DevOps Static App

A tiny single-page static HTML app used to demonstrate a complete DevOps workflow: Git, Docker, GitHub Actions CI/CD, Kubernetes manifests, and Terraform example for provisioning a VM.

## Project structure
devops-static-app/
├─ app/
│  └─ index.html
├─ Dockerfile
├─ .dockerignore
├─ README.md
├─ k8s/
│  ├─ deployment.yaml
│  └─ service.yaml
├─ .github/
│  └─ workflows/
│     └─ ci-cd-dockerhub.yml
└─ terraform/
   ├─ main.tf
   └─ variables.tf
