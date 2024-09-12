terraform {
  backend "s3" {
    bucket = "estudosterraform-engels"
    key    = "day-5-aula-aovivo"
    region = "us-east-2"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}