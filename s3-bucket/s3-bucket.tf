resource "random_id" "number" {
  byte_length = 8
}

resource "aws_s3_bucket" "mybucket-name" {
  bucket = "bootcamp30-${random_id.number.hex}-${var.myname}"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

  resource "aws_s3_bucket_versioning" "versioning_example" {
    bucket = aws_s3_bucket.mybucket-name.id
    versioning_configuration {
      status = "Enabled" 
    }
    
  }
