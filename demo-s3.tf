provider "aws" {
  region  = "ap-south-1"
  access_key = "AKIAQO4GME7RARN3JUCG"
  secret_key = "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"
  
}
resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}