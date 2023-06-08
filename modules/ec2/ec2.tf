module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.1.0"

  name          = var.instance_name
  count         = var.instance_count
  instance_type = var.instance_type
  ami           = var.ami_id
  monitoring    = false
  subnet_id     = var.subnet_id
}
