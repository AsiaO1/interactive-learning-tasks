

# creating private subnets

resource "aws_subnet" "private1" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Team = "DevOps",
    Environment = "Dev"
  }
}

resource "aws_subnet" "private2" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Team = "DevOps",
    Environment = "Dev"
  }
}

resource "aws_subnet" "private3" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "10.0.3.0/24"

  tags = {
    Team = "DevOps",
    Environment = "Dev"
  }
}

