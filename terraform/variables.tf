variable "region" {
  description = "Main region for all resources"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the main VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_1" {
  type        = string
  description = "CIDR block for public subnet 1"
  default     = "10.0.16.0/20"
}

variable "public_subnet_2" {
  type        = string
  description = "CIDR block for public subnet 2"
  default     = "10.0.32.0/20"
}

variable "private_subnet_1" {
  type        = string
  description = "CIDR block for private subnet 1"
  default     = "10.0.80.0/20"
}

variable "private_subnet_2" {
  type        = string
  description = "CIDR block for private subnet 2"
  default     = "10.0.112.0/20"
}

variable "container_port" {
  type        = number
  description = "container port"
  default     = 80
}

variable "availibilty_zone_1" {
  type        = string
  description = "First availibility zone"
  default     = "us-east-1a"
}

variable "availibilty_zone_2" {
  type        = string
  description = "First availibility zone"
  default     = "us-east-1b"
}

#variable "shared_config_files"{
  #type        = string
  #description = "AWS Profile file"
  #default     = "~/.aws/config"
#}

#variable "shared_credentials_files"{
  #type        = string
  #description = "AWS Credentials file"
  #default     = "~/.aws/credentials"
#}

variable "credential_profile"{
  type        = string
  description = "AWS profile"
  default     = "mvsouza"
}

variable "default_tags" {
  type = map
  default = {
    Application = "App"
    Environment = "Prod"
  }
}