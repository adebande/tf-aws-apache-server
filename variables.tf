variable "project_name" {
  description = "Resources project tag"
  type        = string
  default     = "tf-aws-apache-server"
}

variable "name_prefix" {
  description = "Default prefix for resources name tag"
  type        = string
  default     = "apache-server"
}

variable "region" {
  description = "AWS region resources are launched in"
  type        = string
  default     = "eu-north-1"
}

variable "authorized_cidr_blocks" {
  description = "List of IPs that are authorized to access the instance"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

