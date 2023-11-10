provider "aws" {
    region      = var.region
    version     = "~> 2.0"
    
    #shared_config_files       = ["/home/mvsouza/.aws/config"]
    #shared_credentials_files  = ["/home/mvsouza/.aws/credentials"]
    #profile                   = "default"
    #default_tags {
		#tags = var.default_tags
	#}
}