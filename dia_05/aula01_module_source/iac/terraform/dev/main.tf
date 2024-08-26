module "projetoa" {
  source = "github.com/es99/module_instances.git//modules/instances?ref=v2.0.0"

  instance_name = "teste-linuxtips"
  ambiente      = "dev"
  project_name  = "day05-module-source"
}