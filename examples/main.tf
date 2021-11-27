provider "aws" {
  region ="us east -1a"
}

resource "aws_security_group" "allow_sample" {
    name        = "allow_sample"
    description = "Allow sample traffic"

    ingress {
      description      = "TLS from VPC"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
    }

    egress {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
    }

    tags = {
      Name = "allow_sample"
    }
  }

# EC2 instance

resource "aws_instance" "sample" {
  ami           = "ami-0855cab4944392d0a"
  instance_type = "t2.micro"
  vpc_security_group_ids = []

  tags = {
    Name = "sample"
  }
}