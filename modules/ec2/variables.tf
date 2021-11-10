variable "name_prefix" {
  description = "Default prefix for resources name tag"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "authorized_cidr_blocks" {
  description = "List of IPs that are authorized to access the instance"
  type        = list(string)
}

variable "vpc_id" {
  description = "VPC to deploy the instance in"
  type        = string
}

variable "subnet_id" {
  description = "Subnet to deploy the instance in"
  type        = string
}

variable "eip_id" {
  description = "Id of the EIP to associate to the instance"
  type        = string
}

