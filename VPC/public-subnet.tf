resource "aws_subnet" "Public1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.101.0/24"

  tags = {
    Name = "Public1"
  }
}

resource "aws_subnet" "Public2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.102.0/24"

  tags = {
    Name = "Public2"
  }
}


resource "aws_subnet" "Public3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.103.0/24"

  tags = {
    Name = "Public3"
  }
}