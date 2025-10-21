provider "aws" {
  region = "us-east-1"
}

# ECR репозиторий
resource "aws_ecr_repository" "app_repo" {
  name = "aws-cicd-demo"
}

# EKS кластер (упрощённый)
resource "aws_eks_cluster" "app_cluster" {
  name     = "aws-cicd-demo-cluster"
  role_arn = "arn:aws:iam::123456789012:role/EKSClusterRole" # пример
  vpc_config {
    subnet_ids = ["subnet-abc123", "subnet-def456"]
  }
}

