module "vpc" {
  source                  = "git::https://github.com/sirisha517/tf-module-vpc.git"
  env                     = var.env
  tags                    = var.tags
  default_route_table     = var.default_route_table
  default_vpc_id          = var.default_vpc_id

  for_each                = var.vpc
  vpc_cidr                = each.value["vpc_cidr"]
  public_subnets          = each.value["public_subnets"]
  private_subnets         = each.value["private_subnets"]
}


module "docdb" {
  source                  = "git::https://github.com/sirisha517/tf-module-db.git"
  env    = var.env
  tags   = var.tags

  subnet_ids = local.db_subnet_ids

  for_each                = var.docdb
  engine                  = each.value["engine"]
  engine_version          = each.value["engine_version"]
  backup_retention_period = each.value["backup_retention_period"]
  preferred_backup_window = each.value["preferred_backup_window"]
  skip_final_snapshot     = each.value["skip_final_snapshot"]
  no_of_instances         = each.value["no_of_instances"]
  instance_class          = each.value["instance_class"]
}
module "rds" {
  source                  = "git::https://github.com/sirisha517/tf-module-rds.git"
  env    = var.env
  tags   = var.tags

  subnet_ids = local.db_subnet_ids

  for_each                  = var.rds
  engine                    = each.value["engine"]
  engine_version            = each.value["engine_version"]
  backup_retention_period   = each.value["backup_retention_period"]
  preferred_backup_window   = each.value["preferred_backup_window"]
  no_of_instances           = each.value["no_of_instances"]
  instance_class            = each.value["instance_class"]
}

module "elasticcache" {
  source                  = "git::https://github.com/sirisha517/tf-module-elasticcache.git"
  env    = var.env
  tags   = var.tags

  subnet_ids = local.db_subnet_ids
  for_each                  = var.rds
  engine                    = each.value["engine"]
  engine_version            = each.value["engine_version"]
  node_type                 = each.value["node_type"]
  num_cache_nodes           = each.value["num_cache_nodes"]

}
