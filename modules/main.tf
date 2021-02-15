provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_instance" "myec2" {
  ami = ""
  instance_type = "t2.micro"

  tags = {
    Name = "Web Server"
  }
}

module "dbserver" {
  source = "./db"
}
