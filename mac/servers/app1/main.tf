terraform {
  backend "s3" {
    bucket = "tfstatebucket2023sample1"
    dynamodb_table = "state-lock"
    key = "AWS/sample1/ABC/servers/app1/terraform.tfstate"
    region = "ap-south-1"
    encrypt = true
  }
}

module "ec2_app1" {
  source         = "../../../modules/ec2"
  instance_name  = "Jarvis-ABC-App1"
  instance_count = 1
  instance_type  = "t3.micro"
  ami_id         = "ami-049a62eb90480f276"
  subnet_id      = "subnet-03b0abf05638fe217"
}
