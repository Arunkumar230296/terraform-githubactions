output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.my_vpc.id
}

output "public_subnet_ids" {
  description = "IDs of all public subnets"
  value = [
    aws_subnet.Pub-Subnet.id,
    aws_subnet.Pub-Subnet-2.id
  ]
}

output "private_subnet_ids" {
  description = "IDs of all private subnets"
  value = [
    aws_subnet.Pvt-Subnet.id,
    aws_subnet.Pvt-Subnet-2.id
  ]
}

output "subnet_ids" {
  description = "IDs of all subnets in the VPC"
  value = [
    aws_subnet.Pub-Subnet.id,
    aws_subnet.Pub-Subnet-2.id,
    aws_subnet.Pvt-Subnet.id,
    aws_subnet.Pvt-Subnet-2.id
  ]
}

output "internet_gateway_id" {
  description = "Internet Gateway ID"
  value       = aws_internet_gateway.gw.id
}

output "nat_gateway_id" {
  description = "NAT Gateway ID"
  value       = aws_nat_gateway.nat.id
}

output "elastic_ip" {
  description = "Elastic IP allocated to NAT Gateway"
  value       = aws_eip.nat_eip.public_ip
}
