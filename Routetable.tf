#create a route table for Public Subnet
resource "aws_route_table" "Proj-RT" {
  vpc_id = aws_vpc.Proj.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.Proj-IGW.id
  }

}

