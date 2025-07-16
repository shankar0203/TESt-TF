variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default = "Demo_VPC"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
  default = "10.0.2.0/24"
}

variable "availability_zone" {
  description = "Availability zone to launch the subnets"
  type        = string
  default     = "us-east-1a"
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
  default = "ami-020cba7c55df1f615"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default = "t2.micro"
}

variable "key_name" {
  description = "Key pair name to SSH into EC2"
  type        = string
  default = "Master-Key"
}

variable "instance_name" {
  description = "EC2 Instance Name"
  type = string
  default = "Demo-Instance"
}