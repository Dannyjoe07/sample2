terraform {
  backend "s3" {
    bucket = "tfstatebucketsample2useast1"
    dynamodb_table = "state-lock"
    key = "AWS/sample2/backend/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
    profile = "nvrprofile"
  }
}