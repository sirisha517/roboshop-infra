variable "instance" {
  default = {
    frontend = {
      name = "frontend"
      type = "t3.micro"
    }
    Mongodb = {
      name = "Mongodb"
      type = "t3.micro"
    }
    user = {
      name = "user"
      type = "t3.micro"
    }
    Rabbitmq = {
      name = "Rabbitmq"
      type = "t3.micro"
    }
    catalogue = {
      name = "catalogue"
      type = "t3.micro"
    }
    mysql = {
      name = "mysql"
      type = "t3.micro"
    }
    payment = {
      name = "payment"
      type = "t3.micro"
    }
    shipping = {
      name = "shipping"
      type = "t3.micro"
    }
    redis = {
      name = "redis"
      type = "t3.micro"
    }
  }
}