variable "ami" {
  description = "AMI of ec2 instance"
  type = string
  default = "ami-01938df366ac2d954"
}

variable "instance_type" {
  description = "instance type of ec2"
  type = string
  default = "t2.micro"
}

variable "instance_name" {
  description = "instance name"
  type = string
  default = "Jenkins server"
}
variable "az" {
  default = "ap-southeast-1a"
}