resource "aws_route_table_association" "Pub-Route-Table-Association" {
  subnet_id      = aws_subnet.Pub-Subnet.id
  route_table_id = aws_route_table.Pub-Route-Table.id
}

resource "aws_route_table_association" "Pub-Route-Table-Association-1" {
  subnet_id      = aws_subnet.Pub-Subnet-2.id
  route_table_id = aws_route_table.Pub-Route-Table.id
}

resource "aws_route_table_association" "Pvt-Route-Table-Association" {
  subnet_id      = aws_subnet.Pvt-Subnet.id
  route_table_id = aws_route_table.Pvt-Route-Table.id
}

resource "aws_route_table_association" "Pvt-Route-Table-Association-1" {
  subnet_id      = aws_subnet.Pvt-Subnet-2.id
  route_table_id = aws_route_table.Pvt-Route-Table.id
}
