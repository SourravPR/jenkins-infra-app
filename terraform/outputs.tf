output "ec2_public_ip" {
  description = "Public IP of provisioned instance"
  value       = aws_instance.app_server.public_ip
}

output "private_key_pem" {
  description = "Generated SSH private key"
  value       = tls_private_key.ec2_key.private_key_pem
  sensitive   = true
}