terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.82.1"
    }
  }
  backend "s3" {
    bucket         = "tf-backend-state-table"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "backend-state-table"
  }
}