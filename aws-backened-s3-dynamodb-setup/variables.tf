variable "aws_region" {
  description = "This is the region specified for AWS resources"
  default     = "us-east-1"
}

variable "aws_ec2_ami_id" {
  description = "This is AMI id for Ubuntu instance"
  default     = "ami-0e2c8caa4b6378d8c"
}

variable "aws_ec2_instance_type" {
  description = " This is Instance Type for EC2 Instance"
  default     = "t2.micro"
}

variable "aws_ec2_instance_name" {
  description = "This is the name given to EC2 instance"
  default     = "tf-ec2-server"
}

variable "aws_root_volume_size" {
  description = "This is the size of Root Volume for AWS EC2"
  default     = 10
}

variable "aws_root_volume_type" {
  description = "This is the type of Root Volume for AWS EC2"
  default     = "gp3"
}

variable "aws_ec2_instance_count" {
  description = "The count of ec2 instance needed"
  default     = 2
}