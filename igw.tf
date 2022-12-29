#create Internet gateway
resource "aws_internet_gateway" "Proj-IGW" {
  vpc_id = aws_vpc.Proj.id
  tags = {
    Name = "Proj InterNet Gateway"
  }
}

# Create EIP for the IGW

resource "aws_eip" "Proj-EIP" {
  vpc = true
  tags = {
    Name = "Proj-EIP"
  }
}

/*# Create NAT Gateway resource and attach it to the VPC
resource "aws_nat_gateway" "NAT-GW" {
  allocation_id = aws_eip.myEProj-EIP.id
  subnet_id     = aws_subnet.mypublicsubnet.id
} */