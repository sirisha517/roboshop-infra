module "vpc" {
  vpc_cidr = each.value["vpc_cidr"]
  source = "git::https://github.com/sirisha517/tf-module-vpc.git"
  for_each = var.vpc
}