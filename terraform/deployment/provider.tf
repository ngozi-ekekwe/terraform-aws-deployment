terraform {
  required_version = ">= 1.0.11"
  backend "s3" { /* See the backend config in config/backend-config.tf */ }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.68.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.1.0"
    }
  }
}

provider "aws" {
  region = var.provider_region

  default_tags {
    tags = {
      Application = var.service_name
      Terraform  = true
    }
  }
}
