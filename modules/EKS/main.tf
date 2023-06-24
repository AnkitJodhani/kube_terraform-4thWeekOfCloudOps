
resource "aws_eks_cluster" "eks" {
  # Name of the cluster.
  name = var.PROJECT_NAME

  # The Amazon Resource Name (ARN) of the IAM role that provides permissions for 
  # the Kubernetes control plane to make calls to AWS API operations on your behalf
  role_arn = var.EKS_CLUSTER_ROLE_ARN

  # Desired Kubernetes master version
  version = "1.27"

  vpc_config {
    # Indicates whether or not the Amazon EKS private API server endpoint is enabled
    endpoint_private_access = false

    # Indicates whether or not the Amazon EKS public API server endpoint is enabled
    endpoint_public_access = true

    # Must be in at least two different availability zones
    subnet_ids = [
      var.PUB_SUB_1_A_ID,
      var.PUB_SUB_2_B_ID,
      var.PRI_SUB_3_A_ID,
      var.PRI_SUB_4_B_ID
    ]
  }

  # Ensure that IAM Role permissions are created before and deleted after EKS Cluster handling.
  # Otherwise, EKS will not be able to properly delete EKS managed EC2 infrastructure such as Security Groups.

}