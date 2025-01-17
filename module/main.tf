provider "aws" {
  region = var.region
}
terraform {
  backend "s3" {
    bucket = "backend-tf-1"
    key    = "terraform/state.tfstate"
    region = "ap-south-1"
    }
  }
 module "eks" {
   source          = "./eks"
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  region          = var.region
  vpc_id          = var.vpc_id
  subnets         = var.subnets
  node_group_name = var.node_group_name
  desired_size    = var.desired_size
  max_size        = var.max_size
  min_size        = var.min_size
  instance_types  = var.instance_types
  node_role_arn     = var.node_role_arn
  cluster_role_arn  = var.cluster_role_arn
}
module "rds" {
  source                      = "/home/ec2-user/terraform/module/rds"
  allocated_storage           = var.allocated_storage
  db_name                     = var.db_name
  engine                      = var.engine
  engine_version              = var.engine_version
  vpc_id                      = var.vpc_id
  instance_class              = var.instance_class
  master_password             = var.master_password
  username                    = var.username
  parameter_group_name        = var.parameter_group_name
  publicly_accessible         = var.publicly_accessible
  skip_final_snapshot         = var.skip_final_snapshot
}

module "cloudfront" {
  source      = "/home/ec2-user/terraform/module/cloudfront"
  bucket_name = var.bucket_name  # Corrected this line
}