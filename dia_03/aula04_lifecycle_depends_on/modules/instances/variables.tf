variable "instance_name" {
  type        = string
  description = "Nome da instancia"
}

variable "ambiente" {
  type        = string
  description = "Ambiente da instancia"
  default     = "dev"
}

variable "ami" {
  type        = string
  description = "AMI da instancia"
}

variable "ami_bd" {
  type        = string
  description = "AMI do resource BD"

}