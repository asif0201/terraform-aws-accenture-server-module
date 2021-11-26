variable "image" {
 type = string
 default = "ami-0108d6a82a783b352"
}

variable "hw" {
 default = "t2.micro"
}

variable "name" {
  default = "module-created-server"
}

variable "nw-name" {
  default = "Asif-net"
}


resource "aws_instance" "server1" {
  ami           = var.image
  instance_type = var.hw
  key_name = "Key_Asif"
  tags = {
    Name = var.name
    Env  = "Prod"
  }
}

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = var.nw-name
  }
}
