variable "instance_name" {
  type = string
  description = "Nome da instancia"
}

variable "ambiente" {
  type = string
  description = "Ambiente da instancia"
  default = "dev"
}