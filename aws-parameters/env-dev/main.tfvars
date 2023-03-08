parameters = [
  { name = "dev.frontend.catalogue_url", value = "http://catalogue-dev.devops517test.online:8080/", type = "String" },
  { name = "dev.frontend.user_url", value = "http://user-dev.devops517test.online:8080/", type = "String" },
  { name = "dev.frontend.cart_url", value = "http://cart-dev.devops517test.online:8080/", type = "String" },
  { name = "dev.frontend.shipping_url", value = "http://shipping-dev.devops517test.online:8080/", type = "String" },
  { name = "dev.frontend.payment_url", value = "http://payment-dev.devops517test.online:8080/", type = "String" },
  { name = "dev.user.mongo", value = "true", type = "String" },
  { name = "dev.user.redis_host", value = "redis-dev.devops517test.online", type = "String" },
  { name = "dev.user.mongo_url", value = "mongodb://mongodb-dev.devops517test.online:27017/catalogue", type = "String" },
  { name = "dev.shipping.cart_endpoint", value = "cart-dev.devops517test.online:8080", type = "String" },
  { name = "dev.shipping.db_host", value = "mysql-dev.devops517test.online", type = "String" },
  { name = "dev.payment.cart_host", value = "cart-dev.devops517test.online", type = "String" },
  { name = "dev.payment.cart_port", value = "8080", type = "String" },
  { name = "dev.payment.user_host", value = "user-dev.devops517test.online", type = "String" },
  { name = "dev.payment.user_port", value = "8080", type = "String" },
  { name = "dev.payment.amqp_host", value = "rabbitmq-dev.devops517test.online", type = "String" },
  { name = "dev.catalogue.mongo", value = "true", type = "String" },
  { name = "dev.catalogue.mongo_url", value = "mongodb://mongodb-dev.devops517test.online:27017/users", type = "String" },
  { name = "dev.cart.redis_host", value = "redis-dev.devops517test.online", type = "String" },
  { name = "dev.cart.catalogue_host", value = "catalogue-dev.devops517test.online", type = "String" },
  { name = "dev.cart.catalogue_port", value = "8080", type = "String" }
]
## this is not going to be the practice in the companies , we should not keep passwords in git repos
secrets = [
  { name = "test", value = "8080" type = "SecureString"}
]
