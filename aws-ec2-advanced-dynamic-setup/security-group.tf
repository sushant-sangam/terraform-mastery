resource "aws_security_group" "my_sg" {
  name        = "my Z plus security"
  description = "This is SG created by terraform"
  vpc_id      = aws_default_vpc.default.id #interpolation

  ingress {
    description = "Allow access to SSH port 22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = " Allow access to HTTp port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = " Allow all outgoing traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "my Z plus security"
  }

}