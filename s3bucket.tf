provider "aws" {
  alias  = "Oregan"
  region = "eu-west-2"
}

resource "aws_s3_bucket" "sid-1234" {
  provider = aws.Oregan
  bucket   = "my-tf-test-bucketjgjbjyvjyvjhvhfhfh"
  acl      = "private"
  
  tags = {
    Name        = "My bucket dest"
    Environment = "Dev"
  }
  
  versioning {
    enabled = true
  }
}

resource "aws_s3_bucket" "sid-123" {
  provider = aws.Oregan
  bucket = "my-tf-test-bucketjgjbjyvjyvjhv"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

