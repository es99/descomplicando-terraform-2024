data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"] # Canonical

  dynamic "filter" {
    for_each = var.data_filters
    iterator = filtro
    content {
      name   = filtro.value["name"]
      values = filtro.value["values"]
    }
  }
}

resource "aws_instance" "web" {
  for_each      = var.instances
  ami           = data.aws_ami.ubuntu.id
  instance_type = each.value.instance_type

  dynamic "ebs_block_device" {
    for_each = var.ebs_block_devices
    iterator = device
    content {
      device_name = device.value["device_name"]
      encrypted   = device.value["encrypted"]
      volume_size = device.value["volume_size"]
    }
  }

  tags = {
    Name = each.value.instance_name
    Env  = each.value.environment
  }
}