output "cluster_id" {
  description = "EKS cluster ID"
  value       = aws_eks_cluster.this.id
}

output "cluster_endpoint" {
  description = "EKS cluster endpoint"
  value       = aws_eks_cluster.this.endpoint
}

