resource "aws_eks_cluster" "this" {
  name     = var.cluster_name
  version  = var.cluster_version
  vpc_config {
    subnet_ids = var.subnets
  }
}

resource "aws_eks_node_group" "this" {
  cluster_name    = aws_eks_cluster.this.name
  node_group_name = var.node_group_name

  scaling_config {
    desired_size = var.desired_size
    max_size     = var.max_size
    min_size     = var.min_size
  }

  subnet_ids = var.subnets
  instance_types = var.instance_types
}
