#created Custom VPC

resource "aws_vpc" "Proj" {
  cidr_block       = var.CustomVpc-pro-1
  instance_tenancy = "default"
  tags = {
    "Name" = "Project1"
  }
}

#create with Public Subnet

resource "aws_subnet" "PublicSubnet-Proj" {
  cidr_block = var.PublicSubnet
  vpc_id     = aws_vpc.Proj.id
  tags = {
    Name = "Public Subnet"
  }
}

#create with Private Subnet

resource "aws_subnet" "PrivateSubnet-Proj" {
  cidr_block = var.PrivateSubnet
  vpc_id     = aws_vpc.Proj.id
  tags = {
    Name = "Private Subnet"
  }
}

