provider "aws" {
    region = "us-east-1"
}



resource "aws_s3_bucket" "b" {
  bucket = "atabek-my-tf-test-bucket"
  acl    = "private"
  versioning {
    enabled = true 
  }

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}