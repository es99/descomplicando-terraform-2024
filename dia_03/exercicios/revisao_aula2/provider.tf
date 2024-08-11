terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "estudosterraform-engels"
    key    = "day3-revisao-aula2-movendo-state"
    region = "us-east-2"
  }
}

provider "aws" {
  region = "us-east-2"
}