module "ec2_app1" {
  source         = "../../../modules/ec2"
  instance_name  = "groot-mac-app1"
  instance_count = 1
  instance_type  = "t3.micro"
  ami_id         = "ami-04a0ae173da5807d3"
  subnet_id      = module.vpc.subnetID_1a
}