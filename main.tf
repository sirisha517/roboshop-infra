module "vpc" {
  source = "git::https://github.com/sirisha517/tf-module-vpc.git"
  env = var.env
  for_each = var.vpc
  vpc_cidr = each.value["cidr"]

}