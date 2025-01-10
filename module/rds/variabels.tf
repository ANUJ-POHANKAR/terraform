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

variable "vpc_id" {
  description = "The VPC ID for the RDS instance."
  type        = string
}

variable "master_password" {
  description = "The password for the master DB user."
  type        = string
  sensitive   = true
}


variable "username" {
  description = "Username for the master DB user."
  type        = string
}

variable "parameter_group_name" {
  description = "Name of the DB parameter group."
  type        = string
}

variable "publicly_accessible" {
  description = "Whether the DB is publicly accessible."
  type        = bool
}

variable "skip_final_snapshot" {
  description = "Skip final DB snapshot before deletion."
  type        = bool
}
