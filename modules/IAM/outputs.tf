output "EKS_CLUSTER_ROLE_ARN" {
  value = aws_iam_role.eks_cluster_role.arn
}

output "NODE_GROUP_ROLE_ARN" {
  value = aws_iam_role.nodes_general.arn
}
