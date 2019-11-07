provider "aws" {
	profile = "default"
	region 	= "ap-southeast-2"
}

resource "aws_instance" "example" {
	ami = "ami-08a74056dfd30c986"
	instance_type = "t2.micro"
}