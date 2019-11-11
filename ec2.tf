resource "aws_instance" "MyResourceName" {
  ami           = "ami-08a74056dfd30c986"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name_tag
  }

  provisioner "local-exec" {
    command = "echo ${aws_instance.MyResourceName.public_ip} > ip_address.txt"
  }
}

resource "aws_eip" "ip" {
  vpc      = true
  instance = aws_instance.MyResourceName.id
}