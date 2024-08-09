resource "aws_vpc" "java-vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "java-vpc"
  }
}

#subnet-1
resource "aws_subnet" "java-db" {
  vpc_id     = aws_vpc.java-vpc.id
  cidr_block = "10.0.0.0/18"

  tags = {
    Name = "java-db"
  }
}

#subnet-2
resource "aws_subnet" "java-be" {
  vpc_id     = aws_vpc.java-vpc.id
  cidr_block = "10.0.64.0/18"

  tags = {
    Name = "java-db"
  }
}

#subnet-3
resource "aws_subnet" "java-fe" {
  vpc_id     = aws_vpc.java-vpc.id
  cidr_block = "10.0.128.0/18"

  tags = {
    Name = "java-db"
  }
}