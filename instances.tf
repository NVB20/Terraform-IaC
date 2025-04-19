resource "aws_instance" "web_instance" {
  ami           = "ami-0e449927258d45bc4" 
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id
  security_groups = [aws_security_group.web_sg.id]
}

resource "aws_instance" "db_instance" {
  ami           = "ami-0e449927258d45bc4" 
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.private_subnet.id
  security_groups = [aws_security_group.db_sg.id]
}
