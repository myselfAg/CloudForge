resource "aws_s3_bucket" "state" {
  bucket = var.bucket_name
  tags = {
    Name = var.bucket_tag_name
    Environment = var.env
  }
}

resource "aws_dynamodb_table" "lock" {
  name = var.lock_name
  billing_mode = "PAY_PER_REQUEST"

  hash_key = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = var.lock_name
    Environment = var.env
  }
}