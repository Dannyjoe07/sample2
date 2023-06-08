module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.0.0"

  name                 = var.vpc_name
  cidr                 = var.vpc_cidr
  enable_nat_gateway   = var.enable_nat_gateway
  azs                  = var.azs_list
  public_subnets       = var.public_subnets_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true
  public_subnet_names  = var.public_subnets_names
}

