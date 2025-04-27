resource "aws_instance" "jenkins_server" {
  ami = var.ami
  instance_type = var.instance_type
  associate_public_ip_address = true
  availability_zone = var.az
  subnet_id = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.security_group_for_jenkins_server.id]
  user_data = file("jenkins-server-script.sh")

  tags = {
    Name = "jenkins-server"
  }
}