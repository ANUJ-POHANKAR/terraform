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
  source          = "./modules/eks"
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  subnets         = var.subnets
  node_group_name = var.node_group_name
  desired_size    = var.desired_size
  max_size        = var.max_size
  min_size        = var.min_size
  instance_types  = var.instance_types
}


