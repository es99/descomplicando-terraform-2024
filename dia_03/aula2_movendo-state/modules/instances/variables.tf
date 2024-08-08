variable "nome_instancia" {
  type        = string
  description = "Nome da instancia"
}

variable "ambiente" {
  type        = string
  description = "ambiente da instancia"
  default     = "dev"
}