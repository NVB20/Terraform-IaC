resource "aws_instance" "web_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public_subnet.id
  security_groups = [aws_security_group.web_sg.id]
}

resource "aws_instance" "db_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.private_subnet.id
  security_groups = [aws_security_group.db_sg.id]
}
