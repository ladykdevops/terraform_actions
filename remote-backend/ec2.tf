resource "aws_instance" "ec2" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.inst_type

  tags = {
    Name = "MyEC2"
  }
}

