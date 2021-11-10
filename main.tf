provider "aws" {
  region = var.region
  default_tags {
    tags = {
      Project = var.project_name
    }
  }
}

module "ec2" {
  source = "./modules/ec2"

  name_prefix            = var.name_prefix
  instance_type          = var.instance_type
  authorized_cidr_blocks = var.authorized_cidr_blocks
  vpc_id                 = module.vpc.vpc_id
  subnet_id              = module.vpc.subnet_id
  eip_id                 = module.vpc.eip_id
}

module "vpc" {
  source = "./modules/vpc"

  name_prefix = var.name_prefix
}

