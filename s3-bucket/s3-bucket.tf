resource "aws_kms_key" "mykey" {
  description             = "This key is used to encrypt bucket objects"
  deletion_window_in_days = 10
}

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

resource "aws_s3_bucket_server_side_encryption_configuration" "example" {
  bucket = aws_s3_bucket.mybucket-name.id

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.mykey.arn
      sse_algorithm     = "aws:kms"
    }
  }
}