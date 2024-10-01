variable "instances" {
  description = "Data for instances to automatized process"
  type = map(object({
    instance_type = string,
    instance_name = string,
    environment   = string
  }))
}

variable "data_filters" {
  description = "dynamic blocks for filters in data"
  type = map(object({
    name   = string,
    values = list(string)
  }))
}

variable "ebs_block_devices" {
  description = "dynamic block for ebs"
  type = map(object({
    device_name = string,
    encrypted   = bool,
    volume_size = number
  }))
}