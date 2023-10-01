resource "aws_route_table_association" "pub_rtb_association_az1" {

  count = 2 

  subnet_id = aws_subnet.public_subnet_1[count.index].id
  route_table_id = aws_route_table.public_rt.id
  
}

# resource "aws_route_table_association" "pub_rtb_association_az2" {

#   subnet_id = aws_subnet.public_subnet_2.id
#   route_table_id = aws_route_table.public_rt.id
  
# }


resource "aws_route_table_association" "pri_rtb_association_az1" {
  count = 2
  subnet_id = aws_subnet.private_subnet_1[count.index].id
  route_table_id = aws_route_table.private_rt.id
  
}

# resource "aws_route_table_association" "pri_rtb_association_az2" {

#   subnet_id = aws_subnet.private_subnet_2.id
#   route_table_id = aws_route_table.private_rt.id
  
# }