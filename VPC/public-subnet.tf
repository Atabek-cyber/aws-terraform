resource "aws_subnet" "Public1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.101.0/24"
  map_public_ip_on_launch = true
  availability_zone = "us-east-1a"

  tags = {
    Name = "Public1"
  }
}

resource "aws_subnet" "Public2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.102.0/24"
  map_public_ip_on_launch = true
  availability_zone = "us-east-1b"

  tags = {
    Name = "Public2"
  }
}


resource "aws_subnet" "Public3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.103.0/24"
  map_public_ip_on_launch = true
  availability_zone = "us-east-1c"

  tags = {
    Name = "Public3"
  }
}