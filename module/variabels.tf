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
  description = "ARN of the IAM role for the EKS cluster"
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


variable "allocated_storage" {
  description = "The allocated storage in gigabytes."
  type        = number
}

variable "db_name" {
  description = "The name of the database to create."
  type        = string
}

variable "engine" {
  description = "The database engine to use."
  type        = string
}

variable "engine_version" {
  description = "The version of the database engine."
  type        = string
}

variable "instance_class" {
  description = "The instance type of the RDS instance."
  type        = string
}


variable "username" {
  description = "Username for the master DB user."
  type        = string
}

variable "parameter_group_name" {
  description = "Name of the DB parameter group."
  type        = string
}


variable "master_password" {
  description = "The password for the master DB user."
  type        = string
  sensitive   = true
}


variable "publicly_accessible" {
  description = "Whether the DB is publicly accessible."
  type        = bool
}

variable "skip_final_snapshot" {
  description = "Skip final DB snapshot before deletion."
  type        = bool
}
