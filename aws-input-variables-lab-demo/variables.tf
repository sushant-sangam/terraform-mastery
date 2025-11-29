variable "variables_vpc_cidr_block" {
  description = "CIDR Block for the Variables VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "variables_vpc_name" {
  description = "VPC Name for the Variables VPC"
  type        = string
  default     = "demo_variable_vpc"
}

variable "variables_sub_cidr" {
  description = "CIDR Block for the Variables Subnet"
  type        = string
#   default     = "10.0.250.0/24"
  default     = "10.0.202.0/24"
}

variable "variables_sub_az" {
  description = "Availability Zone used for Variables Subnet"
  type        = string
  default     = "us-east-1a"
}

variable "variables_sub_auto_ip" {
  description = "Set Automatic IP Assignment for Variables Subnet"
  type        = bool
  default     = true
}