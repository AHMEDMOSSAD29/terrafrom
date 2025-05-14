# Outputs
output "bastion_public_ip" {
  value = aws_instance.bastion.public_ip
}

output "application_private_ip" {
  value = aws_instance.application.private_ip
}

output "ssh_key_secret_name" {
  value = aws_secretsmanager_secret.ssh_key.name
}

output "ssh_command" {
  value = "ssh -i downloaded_key.pem ubuntu@${aws_instance.bastion.public_ip}"
}