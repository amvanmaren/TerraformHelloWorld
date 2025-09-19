provider "aws" {
  region  = "us-west-1"
  profile = "default"
}

data "aws_ami" "ubuntu" {
  most_recent = true

 filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  
  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "example_name" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"
  tags = {
    Name = "example_name"
  }
}