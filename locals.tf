locals {
  db-subnet-ids = tolist([module.vpc["main"].private_subnet["db_az1"].id,module.vpc["main"].private_subnet["db_az2"].id])
  web-subnet-ids = tolist([module.vpc["main"].private_subnet["web_az1"].id,module.vpc["main"].private_subnet["web_az2"].id])
  app-subnet-ids = tolist([module.vpc["main"].private_subnet["app_az1"].id,module.vpc["main"].private_subnet["app_az2"].id])
}