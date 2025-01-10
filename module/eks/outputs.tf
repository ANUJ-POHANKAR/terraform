output "cluster_id" {
  description = "EKS cluster ID"
  value       = aws_eks_cluster.cluster.id
}

output "cluster_endpoint" {
  description = "The API server endpoint of the EKS cluster"
  value       = aws_eks_cluster.cluster.endpoint
}