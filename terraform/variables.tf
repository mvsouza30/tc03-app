variable "region" {
  description = "Main region for all resources"
  type        = string
  default     = "us-east-1"
}

variable "shared_config_files"{
  type        = string
  description = "AWS Profile file"
  default     = "~/.aws/config"
}

variable "shared_credentials_files"{
  type        = string
  description = "AWS Credentials file"
  default     = "~/.aws/credentials"
}