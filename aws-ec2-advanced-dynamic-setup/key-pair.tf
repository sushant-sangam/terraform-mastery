resource "aws_key_pair" "my_key" {
  key_name   = "terraform-dynamic-key"
  public_key = file("terraform-dynamic-key.pub")
}