provider "aws" {
  secret_key = ""
  access_key = ""
  region = "ap-south-1"
}
resource "aws_instance" "k8-M" {
  ami = "ami-0f58b397bc5c1f2e8"
  instance_type = "t2.medium"
  key_name = "key"
  tags = {
    Name = "KMASTER"
  }
}

resource "aws_instance" "k8-S1" {
  ami = "ami-0f58b397bc5c1f2e8"
  instance_type = "t2.micro"
  key_name = "key"
  tags = {
    Name = "KSlave"
  }
}

