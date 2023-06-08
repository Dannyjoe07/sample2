
  variable "vpc_name" {}

  variable "vpc_cidr" {}

  variable "enable_nat_gateway" {
    default = false
  }

  variable "azs_list" {
    default = ["us-east-1a", "us-east-1b"]
  }

  variable "public_subnets_cidr" {}

  variable "public_subnets_names" {}