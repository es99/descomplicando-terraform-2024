terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "estudosterraform-engels"
    key    = "aula-outputs"
    region = "us-east-2"
  }
}