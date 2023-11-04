provider "aws" {
  region = "us-west-1"  # Altere para a sua região AWS desejada
}

locals {
  cluster_name = "my-eks-cluster"
}