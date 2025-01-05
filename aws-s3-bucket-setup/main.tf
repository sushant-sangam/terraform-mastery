resource "aws_s3_bucket" "demo_bucket" {
  bucket = "s3-terraform-demo-bucket"
  tags = {
    name        = "s3_terraform_demo_bucket"
    environment = "dev"
  }
}