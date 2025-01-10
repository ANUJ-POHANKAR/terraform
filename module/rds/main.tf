
resource "aws_db_instance" "MY_DB" {
  allocated_storage           = var.allocated_storage
  db_name                     = var.db_name
  engine                      = var.engine
  engine_version              = var.engine_version
  instance_class              = var.instance_class
  username                    = var.username
  password                    = var.master_password
  parameter_group_name        = var.parameter_group_name
  publicly_accessible         = var.publicly_accessible
  skip_final_snapshot         = var.skip_final_snapshot


}