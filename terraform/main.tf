module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.2.0"  
  name                 = "my-vpc"
  cidr                 = "10.0.0.0/16"
  azs                  = ["us-west-1a", "us-west-1b", "us-west-1c"]
  private_subnets      = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets       = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_hostnames = true
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "17.1.0" 
  cluster_name    = local.cluster_name
  cluster_version = "1.21"
  subnets         = module.vpc.private_subnets
  vpc_id          = module.vpc.vpc_id   # Adicione esta linha

  node_groups = {
    eks_nodes = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1

      instance_type = "m5.large"
      key_name      = var.key_name
    }
  }
}
