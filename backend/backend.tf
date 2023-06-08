
module "s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "3.11.0"

  bucket = "tfstatebucketsample2useast1"
  server_side_encryption_configuration = {
    rule = {
        bucket_key_enabled = true
        apply_server_side_encryption_by_default = {
            kms_master_key_id = module.kms.key_arn
            sse_algorithm     = "aws:kms"
    }
    }
  }
  versioning = {
    enabled = true
  }
}

module "kms" {
  source  = "terraform-aws-modules/kms/aws"
  version = "1.5.0"
  description = "KMS to encrypt the state bucket"
  enable_key_rotation = true
  key_usage = "ENCRYPT_DECRYPT"
  aliases = ["tfstatekey"]
}

module "dynamodb-table" {
  source  = "terraform-aws-modules/dynamodb-table/aws"
  version = "3.3.0"
  name     = "state-lock"
  hash_key = "LockID"
  billing_mode = "PAY_PER_REQUEST"
  attributes = [
    {
      name = "LockID"
      type = "S"
    }
  ]
}