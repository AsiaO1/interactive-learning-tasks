# create public subnets

resource "aws_subnet" "public1" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "10.0.11.0/24"

  tags = {
    Team = "DevOps",
    Environment = "Dev"
  }
}

resource "aws_subnet" "public2" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "10.0.12.0/24"

  tags = {
    Team = "DevOps",
    Environment = "Dev"
  }
}

resource "aws_subnet" "public3" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "10.0.13.0/24"

  tags = {
    Team = "DevOps",
    Environment = "Dev"
  }
}