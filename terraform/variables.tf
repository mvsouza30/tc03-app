variable "region" {
  description = "Main region for all resources"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the main VPC"
  default     = "172.31.0.0/16"
}

variable "public_sn1" {
  type        = string
  description = "CIDR block for public subnet 1"
}

variable "public_sn2" {
  type        = string
  description = "CIDR block for public subnet 2"
}

variable "private_sn1" {
  type        = string
  description = "CIDR block for private subnet 1"
}

variable "private_sn2" {
  type        = string
  description = "CIDR block for private subnet 2"
}

variable "availibilty_zone_1" {
  type        = string
  description = "First availibility zone"
}

variable "availibilty_zone_2" {
  type        = string
  description = "First availibility zone"
}

variable "default_tags" {
  type = map
  default = {
    Application = "App"
    Environment = "Prod"
  }
}

variable "container_port" {
  description = "Port that needs to be exposed for the application"
  default     = 8081
}

variable "shared_config_files" {
  description = "Path of your shared config file in .aws folder"
}

variable "shared_credentials_files" {
  description = "Path of your shared credentials file in .aws folder"
}

variable "credential_profile" {
  description = "Profile name in your credentials file"
  type        = string
}