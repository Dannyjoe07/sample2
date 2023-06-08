variable "instance_name" {
  default = "default-instance"
}
variable "instance_count" {
  default = "1"
}
variable "instance_type" {
  default = "t3.micro"
}
variable "ami_id" {}
variable "subnet_id" {}
