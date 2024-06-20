provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./vpc"
}

module "security_groups" {
  source = "./security_groups"
  vpc_id = module.vpc.vpc_id
}

module "iam" {
  source = "./iam"
}

module "ec2" {
  source             = "./ec2"
  subnet_id          = module.vpc.public_subnet_id
  security_group_ids = [module.security_groups.web_sg_id]
  iam_instance_profile = module.iam.instance_profile_name
}
