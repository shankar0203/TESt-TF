variable "vpc_name" {}
variable "vpc_cidr" {}
variable "public_subnet_cidr" {}
variable "private_subnet_cidr" {}

variable "availability_zone" {
  default = "us-east-1a"
}
