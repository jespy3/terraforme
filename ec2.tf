resource "aws_instance" "MyResourceName" {
  ami           = "ami-08a74056dfd30c986"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name_tag
  }
}