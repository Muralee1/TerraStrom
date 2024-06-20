resource "aws_instance" "web" {
  ami                   = var.ami_id
  instance_type         = var.instance_type
  subnet_id             = var.subnet_id
  security_group_ids    = var.security_group_ids
  iam_instance_profile  = var.iam_instance_profile

  tags = {
    Name = "WebInstance"
  }
}

output "instance_id" {
  value = aws_instance.web.id
}
