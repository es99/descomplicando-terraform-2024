variable "image_id" {
  type        = string
  description = "The id of the machine imagem (AMI) from ec2"

  validation {
    condition     = length(var.image_id) > 4 && substr(var.image_id, 0, 4) == "ami-"
    error_message = "The image_id must be a valid AMI id, starting with \"ami-\"."
  }
}