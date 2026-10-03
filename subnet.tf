resource "aws_subnet" "Pub-Subnet" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name = "Pub-Subnet"
  }
}

resource "aws_subnet" "Pub-Subnet-2" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name = "Pub-Subnet-2"
  }
}

resource "aws_subnet" "Pvt-Subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "10.0.11.0/24"
  availability_zone = var.availability_zone

  tags = {
    Name = "Pvt-Subnet"
  }
}

resource "aws_subnet" "Pvt-Subnet-2" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "10.0.12.0/24"
  availability_zone = var.availability_zone

  tags = {
    Name = "Pvt-Subnet-2"
  }
}
