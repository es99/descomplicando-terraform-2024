output "instance_types" {
  value = { for instance in var.instances : instance.instance_name => instance.instance_type }
}

output "instance_ids" {
  value = { for instance in aws_instance.web : instance.tags["Env"] => instance.id... }
}