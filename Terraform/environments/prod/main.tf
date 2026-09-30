module "ec2" {
  source = "../../modules/ec2"
  instance_count = var.instance_count
  ami_id        = var.ami_id
  instance_type = var.instance_type
  instance_name = var.instance_name
  subnet_id = module.vpc.subnet_id
  security_group_id = module.vpc.security_group_id
}

module "vpc" {
  source = "../../modules/vpc"
  vpc_cidr_block = var.vpc_cidr_block
  vpc_name = var.vpc_name
  subnet_cidr_block = var.subnet_cidr_block
  subnet_name = var.subnet_name
  subnet_zone = var.subnet_zone
}