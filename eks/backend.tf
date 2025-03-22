terraform {
  required_version = "~> 1.11.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "tf-bucket55"
    region         = "us-east-1"
    key            = "eks/terraform.tfstate"
    use_lockfile     = true
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
