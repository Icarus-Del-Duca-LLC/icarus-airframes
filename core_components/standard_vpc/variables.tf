# Standard input variables for the standard_vpc template.
# Released under Apache License 2.0; see LICENSE.

variable "TFC_WORKSPACE_SLUG" {
  type        = string
  description = "Automatically provided by Terraform Cloud"
}

variable "region" {
  description = "AWS Region"
  default     = "us-east-1"
}

variable "project_name" {
  description = "Name of the project for tagging"
  default     = "boilerplate-vpc"
}

variable "vpc_cidr" {
  description = "Main VPC CIDR block"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24"]
}

variable "private_subnet_cidrs" {
  type    = list(string)
  default = ["10.128.1.0/24", "10.128.2.0/24", "10.128.3.0/24", "10.128.4.0/24"]
}

variable "azs" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d"]
}
