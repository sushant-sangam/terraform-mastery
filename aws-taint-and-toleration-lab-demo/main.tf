# Terraform Data Block - To Lookup Latest Ubuntu 20.04 AMI Image
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"]
}

resource "aws_vpc" "vpc" {
  cidr_block = var.variables_vpc_cidr_block
  tags = {
    Name      = var.variables_vpc_name
    Terraform = "true"
  }

}

resource "aws_subnet" "public_subnets" {
    for_each = {
    public_subnet_1 = "10.0.1.0/24"
    public_subnet_2 = "10.0.2.0/24"
  }
  vpc_id                  = aws_vpc.vpc.id
  # cidr_block              = var.variables_vpc_cidr_block
  cidr_block = each.value
  availability_zone       = var.variables_sub_az
  map_public_ip_on_launch = var.variables_sub_auto_ip

  tags = {
    # Name      = "sub-variables-${var.variables_sub_az}"
    Name      = "sub-variables-${each.key}"
    Terraform = "true"
  }
}

resource "aws_instance" "my-server" {
  instance_type = "t2.micro"
  ami           = data.aws_ami.ubuntu.id
  subnet_id     = aws_subnet.public_subnets["public_subnet_1"].id
}