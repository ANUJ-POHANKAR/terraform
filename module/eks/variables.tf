variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "groot"
}

variable "cluster_version" {
  description = "Kubernetes version for the EKS cluster"
  type        = string
  default     = "1.31"
}

variable "vpc_id" {
  description = "VPC ID for the EKS cluster"
  type        = string
}

variable "subnets" {
  description = "Subnets for the EKS cluster"
  type        = list(string)
  default     = ["subnet-093e3711de8fa49a5", "subnet-0b7981dd9f4c578a1"]
}

variable "node_group_name" {
  description = "Name of the EKS node group"
  type        = string
  default     = "nodes"
}

variable "desired_size" {
  description = "Desired size for the node group"
  type        = number
  default     = 1
}

variable "max_size" {
  description = "Maximum size for the node group"
  type        = number
  default     = 1
}

variable "min_size" {
  description = "Minimum size for the node group"
  type        = number
  default     = 1
}

variable "instance_types" {
  description = "Instance types for the node group"
  type        = list(string)
  default     = ["t3.small"]
}
