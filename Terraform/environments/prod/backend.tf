terraform {
  backend "s3" {
    bucket = "ap-south-1-agneesh-s3-bucket-30092026"
    key = "prod/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "terraform_locks"
  }
}