resource "aws_eks_cluster" "cluster" {
  name     = var.cluster_name
  version  = var.cluster_version

  role_arn = var.cluster_role_arn

  vpc_config {
    subnet_ids = var.subnets
  }
}

resource "aws_eks_node_group" "nodes" {
  cluster_name    = var.cluster_name
  node_group_name = var.node_group_name
  node_role_arn   = var.node_role_arn

  scaling_config {
    desired_size = var.desired_size
    max_size     = var.max_size
    min_size     = var.min_size
  }

  subnet_ids     = var.subnets
  instance_types = var.instance_types

  depends_on = [aws_eks_cluster.cluster]  # Ensures the EKS cluster is created first
}