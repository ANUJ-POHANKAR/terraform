output "eks_cluster_id" {
  description = "EKS cluster ID"
  value       = module.eks.cluster_id
}

output "eks_cluster_endpoint" {
  description = "EKS cluster endpoint"
  value       = module.eks.cluster_endpoint
}

output "rds_endpoint" {
  description = "RDS endpoint"
  value       = module.rds.rds_endpoint
}

output "rds_username" {
  description = "RDS username"
  value       = module.rds.rds_username
}

output "rds_master_password" {
  description = "RDS master password"
  value       = module.rds.master_password  # Correctly reference the output from module.rds
  sensitive   = true  # Mark it as sensitive to avoid exposure
}


