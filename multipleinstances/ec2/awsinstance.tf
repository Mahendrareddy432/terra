
resource "aws_instance" "work" {
  ami           = "ami-0855cab4944392d0a"
  instance_type = "t2.micro"
  vpc_security_group_ids = [var.SGID]

  tags = {
    Name = "work"
  }
}

variable "SGID" {}
variable "name" {}

output "public_ip" {
  value = "aws_instance.work.public_ip"
}