module "vpc" {
  source              = "./modules/vpc"
  vpc_name            = var.vpc_name
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  availability_zone   = var.availability_zone
}

# EC2 Module (instance in private subnet)
module "private_ec2_instance" {
  source              = "./modules/ec2"
  ami_id              = var.ami_id
  instance_type       = var.instance_type
  subnet_id           = module.vpc.private_subnet_id
  key_name            = var.key_name
  associate_public_ip = false
  instance_name       = var.instance_name
}