resource "aws_instance" "myec2" {
  ami = ""
  instance_type = "t2.micro"

  tags = {
    Name = "DB Server"
  }
}
