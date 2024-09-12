module "ec2" {
  source = "./modules/ec2"
  instances = {
    web = {
      name        = "web-ecs",
      type        = "t3.medium",
      environment = "prod"
    },
    db = {
      name        = "dbserver-ecs",
      type        = "t3.large",
      environment = "dev"
    }
  }
}

