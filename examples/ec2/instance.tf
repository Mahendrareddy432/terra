
resource "aws_instance" "data" {
  ami           = "ami-0855cab4944392d0a"
  instance_type = "t2.micro"
  vpc_security_group_ids = [var.SGID]

  tags = {
    Name = "Instance"
  }
}

variable "SGID" {}