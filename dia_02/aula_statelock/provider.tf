terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "estudosterraform-engels"
    key    = "aula-backend"
    region = "us-east-2"
    dynamodb_table = "descomplicando-terraform-turma-2024"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
}