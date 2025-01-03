output "eks_cluster_id" {
  description = "EKS cluster ID"
  value       = module.eks.cluster_id
}

output "eks_cluster_endpoint" {
  description = "EKS cluster endpoint"
  value       = module.eks.cluster_endpoint
}

