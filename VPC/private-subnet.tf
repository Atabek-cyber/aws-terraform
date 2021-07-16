resource "aws_subnet" "Private1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "Private1"
  }
}

resource "aws_subnet" "Private2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "Private2"
  }
}


resource "aws_subnet" "Private3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "us-east-1c"

  tags = {
    Name = "Private3"
  }
}



resource "aws_eip" "nat" {
  vpc      = true
}

resource "aws_nat_gateway" "pgw" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.Public1.id

}

resource "aws_route_table" "Private" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
  tags = {
    Name = "ThreeTier-private"
  }
}

resource "aws_route_table_association" "Private1" {
  subnet_id      = aws_subnet.Private1.id
  route_table_id = aws_route_table.Private.id
}

resource "aws_route_table_association" "Private2" {
  subnet_id      = aws_subnet.Private2.id
  route_table_id = aws_route_table.Private.id
}

resource "aws_route_table_association" "Private3" {
  subnet_id      = aws_subnet.Private3.id
  route_table_id = aws_route_table.Private.id
}