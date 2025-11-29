provider "aws" {
  region = "ap-south-1"
  # access_key = ""
  # secret_key = ""
}

resource "aws_instance" "webserver" {
  for_each = toset([
    "subnet-02e479a5ca8ee2b26",
    "subnet-00c0697481f070615",
    "subnet-0331a94d9c6748efe"
  ])
  ami                    = "ami-02d26659fd82cf299"
  instance_type          = "t2.micro"
  subnet_id              = each.value
  vpc_security_group_ids = ["sg-01e3f4a3ffb345fde"]

  tags = {
    "Name"      = "terraform-webserver-${each.key}"
    "Terraform" = "true"
  }
}
# resource "aws_instance" "webserver" {
#   ami                    = "ami-02d26659fd82cf299"
#   instance_type          = "t2.micro"
#   subnet_id              = "subnet-00c0697481f070615"
#   vpc_security_group_ids = ["sg-01e3f4a3ffb345fde"]

#   tags = {
#     "Name"      = "WebServer"
#     "Terraform" = "true"
#   }
# }