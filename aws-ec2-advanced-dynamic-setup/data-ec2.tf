data "aws_ami" "os_image" {
  most_recent = true
  owners      = ["099720109477"]
  filter {
    name = "state"
    values = ["available"]
  }
  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-*-*-server-*"]
    # values = ["ubuntu/images/*"]      # use when owners  is not available
  }
}