# module "security_group" {
#   source  = "terraform-aws-modules/security-group/aws"
#   version = "~> 4.0"

#   name        = "modules-security-group"
#   description = "Allows Port SSH and HTTP Traffic"
#   vpc_id      = module.vpc.vpc_id

#   ingress_cidr_blocks = ["0.0.0.0/0"]
#   ingress_rules       = ["http-80-tcp", "all-icmp"]
#   egress_rules        = ["all-all"]

#   tags = {
#     Name = "Modules Security Group"
#   }
# }
