variable "aws_region" {
  description = "The AWS region to deploy the infrastructure"
  default     = "us-west-2"
}

variable "your_ip" {
  description = "Your IP address for SSH access"
  type        = string
}

variable "ami_id" {
  description = "The ID of the AMI to use for the EC2 instance"
  default     = "ami-0c55b159cbfafe1f0"  # Replace with your preferred AMI
}

variable "instance_type" {
  description = "The instance type to use for the EC2 instance"
  default     = "t2.micro"
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket to allow access to"
  type        = string
}
