# Public Subnet 1 - us-east-1a
resource "aws_subnet" "Pub-Subnet" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "Pub-Subnet"
  }
}

# Public Subnet 2 - us-east-1b
resource "aws_subnet" "Pub-Subnet-2" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "Pub-Subnet-2"
  }
}

# Private Subnet 1 - us-east-1a
resource "aws_subnet" "Pvt-Subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "10.0.11.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "Pvt-Subnet"
  }
}

# Private Subnet 2 - us-east-1b
resource "aws_subnet" "Pvt-Subnet-2" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "10.0.12.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "Pvt-Subnet-2"
  }
}
