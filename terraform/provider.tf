terraform {
  required_version = "~> 1.6.2"
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 3.72.0"
        }
    }
}
provider "aws" {
    region      = var.region
}