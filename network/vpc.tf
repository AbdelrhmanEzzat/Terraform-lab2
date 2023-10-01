resource "aws_vpc" "main" {
  cidr_block = var.cidr

  tags = {
    Name = "VPC-1-tf"
  }
}