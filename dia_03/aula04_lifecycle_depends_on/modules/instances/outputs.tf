output "instance_ip_address" {
  value = aws_instance.web.private_ip
}