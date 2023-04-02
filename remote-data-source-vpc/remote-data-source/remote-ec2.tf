terraform {
    required_version = "~> 1.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source = "hashicorp/aws"
    }
  }
}

#provider block
provider "aws" {
    region = "us-east-2"
    profile = "default"
}

#if using s3 backend
data "terraform_remote_state" "network" {
    backend = "s3"
config = {
    bucket = "bootcamp30-state-files"
    key    = "prod/terraform.tfstate"
    region = "us-east-2"
}
}

#if backend is local
/*
data "terraform_remote_state" "network" {
    backend = "local"
    config = {
        path = "../pathlocation"
    }
}
*/


resource "aws_instance" "my1-ec2" {
  ami           = data.aws_ami.amzlinux2.id
  instance_type = "t2.micro"
  subnet_id     = data.terraform_remote_state.network.outputs.private_subnets[0]

  tags = {
    Name = "My1-EC2"
  }
}
