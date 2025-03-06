resource "aws_eks_cluster" "eks" {
  name     = "Three-Tier-K8s-EKS-Cluster"
  role_arn = aws_iam_role.eks-role.arn

  vpc_config {
    subnet_ids = [
      "subnet-02a9b7424a6a80c6c",  # us-east-1a
      "subnet-090030359492527e1"   # us-east-1c
    ]
    security_group_ids = ["sg-0307cc97bff34e0fd"]  # <-- Change to a valid SG
  }
}
