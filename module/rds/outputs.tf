output "rds_endpoint" {
  description = "RDS endpoint"
  value       = aws_db_instance.MY_DB.endpoint
}

output "rds_username" {
  description = "RDS username"
  value       = aws_db_instance.MY_DB.username
}
output "master_password" {
  description = "The master password for the RDS instance"
  value       = aws_db_instance.MY_DB.password  # Assuming you're using this attribute
  sensitive   = true  # Mark it as sensitive to prevent exposure
}