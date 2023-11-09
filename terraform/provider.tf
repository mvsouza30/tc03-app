terraform {
  required_version = "~> 1.6.2"
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 5.1.0"
        }
    }
}
provider "aws" {
    region      = var.region
    access_key  = ""
    secret_key  = ""
}