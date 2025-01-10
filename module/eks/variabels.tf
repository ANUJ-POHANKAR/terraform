variable "region" {
  description = "AWS region"
  type        = string
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
}

variable "cluster_version" {
  description = "Kubernetes version for the EKS cluster"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for the EKS cluster"
  type        = string
}

variable "subnets" {
  description = "Subnets for the EKS cluster"
  type        = list(string)
}

variable "node_group_name" {
  description = "Name of the EKS node group"
  type        = string
}

variable "node_role_arn" {
  description = "ARN of the IAM role for the EKS node group"
  type        = string
}


variable "desired_size" {
  description = "Desired size for the node group"
  type        = number
}

variable "max_size" {
  description = "Maximum size for the node group"
  type        = number
} 


variable "min_size" {
  description = "Minimum size for the node group"
  type        = number
}

variable "instance_types" {
  description = "Instance types for the node group"
  type        = list(string)
}

variable "cluster_role_arn" {
  description = "ARN of the IAM role for the EKS cluster"
  type        = string
}

                