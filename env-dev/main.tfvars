env = "dev"

vpc = {
  main = {
    vpc_cidr = "10.0.0.0/16"
    public_subnets = {
      public_az1 = {
        name = "public_az1"
        cidr_block =  "10.0.0.0/24"
        availability_zone = "us-east-1a"
      }
      public_az2 = {
        name = "public_az2"
        cidr_block =  "10.0.1.0/24"
        availability_zone = "us-east-1b"
      }
    }
    private_subnets = {
      web_az1 = {
        name = "web_az1"
        cidr_block =  "10.0.2.0/24"
        availability_zone = "us-east-1a"
      }
      web_az2 = {
        name = "web_az2"
        cidr_block =  "10.0.3.0/24"
        availability_zone = "us-east-1b"
      }
      app_az1 = {
        name = "app_az1"
        cidr_block =  "10.0.4.0/24"
        availability_zone = "us-east-1a"
      }
      app_az2 = {
        name = "app_az2"
        cidr_block =  "10.0.5.0/24"
        availability_zone = "us-east-1b"
      }
      db_az1 = {
        name = "db_az1"
        cidr_block =  "10.0.6.0/24"
        availability_zone = "us-east-1a"
      }
      db_az2 = {
        name = "db_az2"
        cidr_block =  "10.0.7.0/24"
        availability_zone = "us-east-1b"
      }
    }
  }
}