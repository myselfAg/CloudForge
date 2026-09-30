module "ec2" {
  source = "../../modules/ec2"
  count = 2
  ami_id        = var.ami_id
  instance_type = var.instance_type
  instance_name = var.instance_name[count.index]
  subnet_id = module.vpc.subnet_id
  security_group_id = module.vpc.security_group_id
}

module "vpc" {
  source = "../../modules/vpc"
  vpc_cidr_block = var.vpc_cidr_block
  subnet_cidr_block = var.subnet_cidr_block
}