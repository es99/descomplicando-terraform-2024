module "ec2_instance" {
  for_each = var.instances
  source   = "terraform-aws-modules/ec2-instance/aws"

  name = each.value["name"]

  instance_type = each.value["type"]
  #key_name               = "user1"
  monitoring = true
  #vpc_security_group_ids = ["sg-12345678"]
  #subnet_id              = "subnet-eddcdzz4"

  tags = {
    Terraform   = "true"
    Environment = each.value["environment"]
  }
}