variable "instances" {
  description = "Data for instances to automatized process"
  type = map(object({
    instance_type = string,
    instance_name = string,
    environment   = string
  }))
}