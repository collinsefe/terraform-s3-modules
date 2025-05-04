# data "aws_availability_zones" "available" {}

# module "vpc" {
#   source  = "terraform-aws-modules/vpc/aws"
#   version = "5.1.2"

#   name = "modules-vpc"

#   cidr = "192.168.0.0/19"
#   azs  = slice(data.aws_availability_zones.available.names, 0, 3)

#   private_subnets = ["192.168.0.0/22", "192.168.4.0/22", "192.168.8.0/22"]
#   public_subnets  = ["192.168.12.0/22", "192.168.16.0/22", "192.168.20.0/22"]

#   enable_nat_gateway   = false
#   single_nat_gateway   = false
#   enable_dns_hostnames = true

#   public_subnet_tags = {
#     "Name" = "mobules-public-VPC"
#   }

#   private_subnet_tags = {
#     "Name" = "mobules-private-VPC"
#   }
# }
