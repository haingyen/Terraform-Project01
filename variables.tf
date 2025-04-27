variable "region" {
  default = "ap-southeast-1"
}

variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
}

variable "subnet_cidr_block" {
  default = "10.0.10.0/24"
}

variable "az" {
  default = "ap-southeast-1a"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami" {
  default = "ami-01938df366ac2d954"
}