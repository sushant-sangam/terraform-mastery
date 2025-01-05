resource "aws_s3_bucket" "backend_bucket" {
  bucket = var.s3_backend_bucket_name

  tags = {
    Name        = var.s3_backend_bucket_name
    environment = "dev"
  }
}

resource "aws_dynamodb_table" "my_dynamodb_table" {
  name         = var.aws_dynamodb_table_name
  billing_mode = "PAY_PER_REQUEST"
  # read_capacity = 20
  # write_capacity = 20
  hash_key = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }


}