resource "aws_key_pair" "my_key" {
  key_name = "terraform-demo-key"
  public_key = file("terraform-demo-key.pub")
}

resource "aws_default_vpc" "default" {

}

resource "aws_security_group" "my_sg" {
    name = "my Z plus security"
    description = "This is SG created by terraform"
    vpc_id = aws_default_vpc.default.id  #interpolation

    ingress {
        description = "Allow access to SSH port 22"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        description = " Allow access to HTTp port 80"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        description = " Allow all outgoing traffic"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Name = "my Z plus security"
    }

}
resource aws_instance my_instance {
    instance_type = "t2.micro"
    ami = "ami-0e2c8caa4b6378d8c"
    security_groups = [ aws_security_group.my_sg.name ]  # interpolation
    key_name = aws_security_group.my_sg.key_name.id    # interpolation
    root_block_device {
      volume_size = 10
      volume_type = "gp3"    # general purpose
    }
    tags = {
      Name = "tf-ec2-instance-server"
    }

}