module "projetoa" {
  source = "./modules/instances"

  instance_name = "teste"
}

moved {
  from = module.projetoa.aws_instance.web
  to = module.projetoa.aws_instance.this
}