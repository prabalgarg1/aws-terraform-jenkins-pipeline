output "instance_id" {
  description = "Created EC2 Instance ID"
  value       = aws_instance.app_server.id
}

output "instance_public_ip" {
  description = "Public IP Address of the EC2 Instance"
  value       = aws_instance.app_server.public_ip
}
