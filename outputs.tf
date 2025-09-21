output "instancce_hostname" {
  description = "Private DNS name of the EC2 instance."
  value       = aws_instance.example_name.private_dns
}