output "public_ips" {
  description = "Public ips from ec2 instances"
  value       = { for instance in module.ec2_instance : instance.tags_all["Environment"] => instance.public_ip... }
}