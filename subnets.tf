resource "aws_subnet" "java-db" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "java-db"
  }
}