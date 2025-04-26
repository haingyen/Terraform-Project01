resource "aws_instance" "ubuntu" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = "jenkins-server"
  subnet_id = [aws_subnet.public_subnet.id]
  vpc_security_group_ids = [aws_default_security_group.default-sg.id]
  availability_zone = var.az
  associate_public_ip_address = true
  user_data = file("jenkins-server-scripts.sh")
  tags = {
    Name = var.instance_name
  }
}