resource "aws_instance" "Proj-Web" {
  #region                 = var.aws-region
  instance_type          = var.instancetype
  ami                    = var.ami-id
  vpc_security_group_ids = ["${aws_security_group.Proj-SG.id}"]

  tags = {
    name = "webserver-Proj"
  }

  key_name = "VMimport"

}