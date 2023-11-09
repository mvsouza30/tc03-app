terraform {
  required_version = "~> 1.6.2"
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 5.24.0"
        }
    }
}
provider "aws" {
    region                    = var.region
    shared_config_files       = [var.shared_config_files]
    shared_credentials_files  = [var.shared_credentials_files]
    profile                   = var.credential_profile
    default_tags {
		tags = var.default_tags
	}
}