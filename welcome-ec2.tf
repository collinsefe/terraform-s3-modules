module "ec2_collins" {
  source            = "./modules/ec2"
  security_group_id = module.security_group.security_group_id
  public_subnets    = element(module.vpc.private_subnets, 0)
  key_name          = aws_key_pair.this.key_name
  tagname           = var.tag_collins

}
