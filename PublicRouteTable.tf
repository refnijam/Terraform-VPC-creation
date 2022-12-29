resource "aws_route_table_association" "PublicRTAss" {
  subnet_id      = aws_subnet.PublicSubnet-Proj.id
  route_table_id = aws_route_table.Proj-RT.id
}