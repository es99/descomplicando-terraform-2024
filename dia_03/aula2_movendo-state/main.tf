module "projetoa" {
  source = "./modules/instances"

  nome_instancia = "movendo_state"
}

moved {
  from = module.projetoa.aws_instance.web
  to = module.projetoa.aws_instance.this
}