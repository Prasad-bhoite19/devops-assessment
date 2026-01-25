output "public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.devops_ec2.public_ip
}

output "ssh_command" {
  description = "Command to SSH into EC2 instance"
  value       = "ssh -i <your-private-key.pem> ubuntu@${aws_instance.devops_ec2.public_ip}"
}
