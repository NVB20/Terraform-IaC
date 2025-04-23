output "web_instance_public_ip" {
  description = "The IP for the public Instance"
  value = aws_instance.web_instance.public_ip
}
