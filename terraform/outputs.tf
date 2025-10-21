output "cluster_name" {
  value = aws_eks_cluster.app_cluster.name
}

output "ecr_repository_url" {
  value = aws_ecr_repository.app_repo.repository_url
}

