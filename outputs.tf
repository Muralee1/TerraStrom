output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_id" {
  value = module.vpc.public_subnet_id
}

output "web_sg_id" {
  value = module.security_groups.web_sg_id
}

output "iam_role_name" {
  value = module.iam.role_name
}

output "instance_profile_name" {
  value = module.iam.instance_profile_name
}

output "ec2_instance_id" {
  value = module.ec2.instance_id
}
