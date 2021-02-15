provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_instance" "myec2" {
  ami = ""
  instance_type = "t2.micro"

  tags = {
    Name = "Web Server"
  }

  depends_on = [aws_instance.dbserver]
}

resource "aws_instance" "dbserver" {
  ami = ""
  instance_type = "t2.micro"

  tags = {
    Name = "DB Server"
  }
}

data "aws_instance" "dbsearch" {
  filter {
    name = "tag:Name"
    values = ["DB Server"]
  }
}

output "dbservers" {
  value = data.aws_instance.dbsearch.availability_zone
}