
resource "aws_security_group" "Proj-SG" {
  ingress {
    description = "HTTP"
    from_port   = var.http_port
    to_port     = var.http_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/32"]
  }
  ingress {
    description = "SSH"
    from_port   = var.SSH_port
    to_port     = var.SSH_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/32"]
  }
  ingress {
    description = "HTTPS"
    from_port   = var.https_port
    to_port     = var.https_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/32"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Proj-SG"
  }
}