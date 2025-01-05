variable "aws_region" {
  description = "This is the region specified for AWS resources"
  default     = "us-east-1"
}

variable "s3_backend_bucket_name" {
  description = "AWS S3 backend bucket name"
  default     = "tf-backend-state-table"
}

variable "aws_dynamodb_table_name" {
  description = "AWS S3 backend dynamodb table"
  default     = "backend-state-table"
}