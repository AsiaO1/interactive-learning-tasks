# creating NAT Gateway

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public1.id

  tags = {
    Team = "DevOps",
    Environment = "Dev"
  }
}
 # creating Elastic IP address for NAT Gateway
resource "aws_eip" "nat" {
  vpc      = true
}

# creating Route Table for private

resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.vpc.id


  route = [
    {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_nat_gateway.nat.id
    }
  ]

  tags = {
    Team = "DevOps",
    Environment = "Dev"
  }
}

# creating Route Table Association for private

resource "aws_route_table_association" "private1" {
  subnet_id      = aws_subnet.private1.id
  route_table_id = aws_route_table.private_rt.id
}

resource "aws_route_table_association" "private2" {
  subnet_id      = aws_subnet.private2.id
  route_table_id = aws_route_table.private_rt.id
}

resource "aws_route_table_association" "private3" {
  subnet_id      = aws_subnet.private3.id
  route_table_id = aws_route_table.private_rt.id
}