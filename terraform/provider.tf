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
    access_key  = var.access_key_id
    secret_key  = var.secret_key
}