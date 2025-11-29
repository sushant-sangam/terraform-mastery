resource "aws_s3_bucket" "my-new-s3-bucket" {
  bucket = "my-new-tf-bucket-${random_id.randomness.hex}"

  tags = {
    Name    = "My S3 Bucket"
    Purpose = "Intro to Resource blocks Lab "
  }
}

resource "aws_s3_bucket_ownership_controls" "my_new_bucket_acl_ownership" {
  bucket = aws_s3_bucket.my-new-s3-bucket.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }

}

resource "aws_s3_bucket_acl" "my_new_bucket_acl" {
  depends_on = [aws_s3_bucket_ownership_controls.my_new_bucket_acl_ownership]
  bucket     = aws_s3_bucket.my-new-s3-bucket.id
  acl        = "private"
}

resource "random_id" "randomness" {
  byte_length = 16
}