variable "aws_region" {
  description = "AWS Region to deploy in"
  type        = string
  default     = "eu-north-1"
}

variable "instance_type" {
  description = "EC2 instance type (ARM64 Free Tier eligible)"
  type        = string
  default     = "t4g.micro"
}

variable "key_name" {
  description = "Name of the existing AWS key pair to use for EC2 SSH access"
  type        = string
}
