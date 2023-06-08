terraform {
  backend "s3" {
    bucket         = "tfstatebucketsample2useast1"
    dynamodb_table = "state-lock"
    key            = "AWS/sample2/mac/networking/vpc-setup/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    profile        = "nvrprofile"
  }
}

module "vpc_groot" {
  source               = "../../../modules/vpc"
  vpc_name             = "groot-vpc"
  vpc_cidr             = "10.1.0.0/16"
  enable_nat_gateway   = false
  azs_list             = ["us-east-1a", "us-east-1b"]
  public_subnets_cidr  = ["10.1.1.0/24", "10.1.2.0/24"]
  public_subnets_names = ["groot-subnet-public-1a", "groot-subnet-public-1b"]
}

