resource "aws_eip" "nat_eip" {
  domain = "vpc"

  tags = {
    Name = "nat-eip"
  }
}
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.Pub-Subnet.id

  depends_on = [
    aws_internet_gateway.gw
  ]

  tags = {
    Name = "my-nat-gateway"
  }
}
