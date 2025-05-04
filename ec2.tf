# resource "aws_instance" "this" {
#   ami                         = var.ami_id
#   instance_type               = var.instance_type
#   associate_public_ip_address = true
#   vpc_security_group_ids      = var.security_group_id #[aws_security_group.main.id]
#   subnet_id = var.vpc_public_subnets
#   key_name  = var.key_name

#   tags = {
#     Name = "demo instance"
#   }
# }
