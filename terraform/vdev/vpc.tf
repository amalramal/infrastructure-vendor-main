module "vpc" {
  source = "git::git@github.com:ledgerrun/terraform-modules.git?ref=vpc/v1.1.0"

  public_subnet_newbits  = 3
  private_subnet_newbits = 6

  aws_region   = var.aws_region
  project_name = var.environment
  vpc_cidr     = var.vpc_cidr

  enable_single_nat_gw = true
}
