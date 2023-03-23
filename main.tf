module "vpc" {
  source = "git::https://github.com/sirisha517/tf-module-vpc.git"
  env    = var.env
  tags   = var.tags
  for_each = var.vpc
  vpc_cidr = each.value["vpc_cidr"]


}