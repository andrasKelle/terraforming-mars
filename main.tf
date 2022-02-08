terraform {
  required_providers {
    aws = {
      source    = "hashicorp/aws"
      version   = "3.74.0"
    }
  }
}

provider "aws" {
  profile   = "${var.aws_profile}"
  region    = "${var.aws_region}"
}

terraform {
  required_version = "~> 1.0"
  backend "s3" {
    bucket         = "terraforming-mars-cc-demo-tfstate"
    key            = "terraform.tfstate"
    region         = "eu-west-3"
    dynamodb_table = "terraforming-mars-cc-demo-tflock"
    encrypt        = true
  }
}