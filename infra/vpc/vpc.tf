module "vpc" {
  source               = "git::https://github.com/PottaAkhil/Terraform-modules-teja.git//modules/vpc?ref=main"

  vpc_cidr             = var.vpc_cidr
  instance_tenancy     = var.instance_tenancy
  enable_dns_support   = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames
  aws_region           = var.aws_region
  environment          = var.environment
  subnet_id_public     = var.subnet_id_public
  availability_zone    = var.availability_zone
  subnet_id_private    = var.subnet_id_private
  resource_tags        = var.resource_tags
}