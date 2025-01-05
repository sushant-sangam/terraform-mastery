resource "aws_instance" "my_instance" {
  instance_type = "t2.micro"
  ami           = "ami-0e2c8caa4b6378d8c"

  tags = {
    Name = "terraform-ec2-server"
  }
}