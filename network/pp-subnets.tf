resource "aws_subnet" "public_subnet_1" {
  count = 2
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.sub_pub[count.index]  # Replace with your desired CIDR block
  availability_zone       = var.azs56[count.index]   # Replace with your desired availability zone
  map_public_ip_on_launch = true
  tags = {
    Name = "public_subnet_az1"
  }
}

# resource "aws_subnet" "public_subnet_2" {
#   vpc_id                  = aws_vpc.main.id
#   cidr_block              = var.sub_pub[1] # Replace with your desired CIDR block
#   availability_zone       = var.azs56[1]   # Replace with your desired availability zone
#   map_public_ip_on_launch = true # to take ip address from pool 
#   tags = {
#     Name = "public_subnet_az2"
#   }
# }

resource "aws_subnet" "private_subnet_1" {
  count= 2
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.sub_priv[count.index] # Replace with your desired CIDR block
  availability_zone       = var.azs56[count.index + 2]   # Replace with your desired availability zone
  map_public_ip_on_launch = false
  tags = {
    Name = "private_subnet_az1"
  }
}

# resource "aws_subnet" "private_subnet_2" {
#   vpc_id                  = aws_vpc.main.id
#   cidr_block              = var.sub_priv[1]  # Replace with your desired CIDR block
#   availability_zone       =  var.azs56[3]  # Replace with your desired availability zone
#   map_public_ip_on_launch = false
#   tags = {
#     Name = "private_subnet_az2"
#   }
# }