variable "instances" {
  type = map(object({
    name        = string,
    type        = string,
    environment = string
  }))
}