
resource "aws_eip" "nat_eip" {
#   domain = "vpc"
}


resource "aws_nat_gateway" "my_nat_gateway" {

  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public_subnet_1[0].id

  tags = {
    Name = "Nat_tr"
  }
}