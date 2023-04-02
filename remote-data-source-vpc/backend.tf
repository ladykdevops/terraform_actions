terraform {
    required_version = "~> 1.0"
  required_providers {
    aws = {
      version = "~> 4.0"
      source = "hashicorp/aws"
    }
  }
  
    backend "s3" {
    bucket = "bootcamp30-state-files"
    key    = "prod/terraform.tfstate"
    dynamodb_table = "terraform-lock"
    region = "us-east-2"
  
    }
}

resource "aws_dynamodb_table" "tf_lock" {
    name = "terraform-lock"
    hash_key = "LockID"
        read_capacity = 3
        write_capacity = 3
        attribute {
            name = "LockID"
            type = "S"
        }
        tags = {
            Name = "Terraform Lock Table"
        }
        lifecycle {
            prevent_destroy = false
        }
}

#Provider Block
provider "aws" {
    region = "us-east-2"
    profile = "default"
      access_key = "AKIATVOS6CVQ4C2IHBV4"
      secret_key = "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"
}
