module "ec2_instance" {
  source = "./modules/instances"

  instance_name = "terraform-descomplicated"
  ami           = "ami-01807c5d96dc0eced"
  ami_bd        = "ami-05c3dc660cb6907f0"
}