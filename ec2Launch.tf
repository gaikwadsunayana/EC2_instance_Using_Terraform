provider "aws"{
  region = "ap-south-1"

}

resource "aws_instance" "OS" {

  ami = "ami-0fd05997b4dff7aac"
  instance_type = "t2.micro"
  tags = {
    Name = "OS1"
}

}

output "OP_of_OS1" {

  value = aws_instance.OS.public_ip

}
