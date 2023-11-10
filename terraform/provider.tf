terraform {
  cloud {
    organization = "mvsouza_studies"

    workspaces {
      name = "studies_environment"
    }
  }
}

provider "aws" {
    region                    = var.region
    #shared_config_files       = [var.shared_config_files]
    shared_credentials_files  = ["/home/mvsouza/.aws/credentials"]
    profile                   = "default"
    default_tags {
		tags = var.default_tags
	}
}