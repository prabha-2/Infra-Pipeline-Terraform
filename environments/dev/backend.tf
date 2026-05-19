terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "1.15.3"
    }
  }
  backend "s3" {
    bucket = "terraform-buck"
    key    = "environments/dev/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.aws_region
}