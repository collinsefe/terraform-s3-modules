module "ec2_collins" {
  source            = "./modules/ec2"
  security_group_id = module.security_group.security_group_id
  public_subnets    = element(module.vpc.private_subnets, 0)
  key_name          = aws_key_pair.this.key_name
  tagname           = var.tag_collins
  #   etag              = filemd5("tools/index.html")

}

# module "ec2_bimbo" {
#   source            = "./modules/ec2"
#   security_group_id = module.security_group.security_group_id
#   public_subnets    = element(module.vpc.private_subnets, 0)
#   tagname           = var.tag_bimbo
# }

# module "ec2_okhai" {
#   source            = "./modules/ec2"
#   security_group_id = module.security_group.security_group_id
#   public_subnets    = element(module.vpc.private_subnets, 0)
#   tagname           = var.tag_okhai
# }



data "aws_availability_zones" "available" {}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.1.2"

  name = "modules-vpc"

  cidr = "192.168.0.0/19"
  azs  = slice(data.aws_availability_zones.available.names, 0, 3)

  private_subnets = ["192.168.0.0/22", "192.168.4.0/22", "192.168.8.0/22"]
  public_subnets  = ["192.168.12.0/22", "192.168.16.0/22", "192.168.20.0/22"]

  enable_nat_gateway   = false
  single_nat_gateway   = false
  enable_dns_hostnames = true

  public_subnet_tags = {
    "Name" = "mobules-public-VPC"
  }

  private_subnet_tags = {
    "Name" = "mobules-private-VPC"
  }
}


module "security_group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "~> 4.0"

  name        = "modules-security-group"
  description = "Allows Port SSH and HTTP Traffic"
  vpc_id      = module.vpc.vpc_id

  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["http-80-tcp", "all-icmp"]
  egress_rules        = ["all-all"]

  tags = {
    Name = "Modules Security Group"
  }
}
























