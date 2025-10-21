# 🚀 Full CI/CD Pipeline with AWS (ECR + EKS + Terraform)

This project demonstrates a **complete DevOps workflow** using **Docker, Terraform, GitHub Actions, and AWS (ECR + EKS)**.  
It automatically builds a Docker image, pushes it to **AWS ECR**, and deploys it to **AWS EKS** using **Terraform**.

---
## 🐍 Flask App
A simple web app that returns a welcome message.

# 🐳 Docker
Build locally:
```
docker build -t aws-cicd-demo .
docker run -p 5000:5000 aws-cicd-demo
```
⚙️ Terraform
This Terraform configuration:

 * Creates an ECR repository to store Docker images
 * Creates an EKS cluster to host the app

Initialize and apply:
```
cd terraform
terraform init
terraform plan
terraform apply
```

# 🔄 GitHub Actions (CI/CD)

The workflow:
 * Builds and tests the app
 * Builds a Docker image
 * Pushes it to AWS ECR
 * Deploys it to EKS via Terraform

Secrets required (for real AWS use):
 * AWS_ACCESS_KEY_ID
 * AWS_SECRET_ACCESS_KEY

# 🌍 Local Simulation
You can simulate the deployment locally using Minikube instead of AWS:
```
minikube start
kubectl apply -f k8s/
kubectl get pods
minikube service aws-cicd-demo-service
```

## 🧩 Project Structure
```
aws-cicd-demo/
├─ app/
│ ├─ main.py # Flask web app
│ └─ requirements.txt
├─ dockerfile
├─ k8s/
│ ├─ deployment.yaml # Kubernetes deployment manifest
│ └─ service.yaml # Kubernetes service manifest
├─ terraform/
│ ├─ main.tf
│ ├─ variables.tf
│ └─ outputs.tf
├─ .github/
│ └─ workflows/
│ └─ ci-cd.yml # GitHub Actions CI/CD pipeline
└─ README.md
```
