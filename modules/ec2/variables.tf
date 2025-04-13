variable "instance_type" {
  default = "t2.micro"
}

variable "ami_id" {
  default = "ami-008015da06c873b17"
}

variable "tagname" {
  default = ""
}

variable "key_name" {
  type    = string
  default = null
}

variable "security_group_id" {
  default = ""
}

variable "private_subnets" {
  default = ""
}

variable "public_subnets" {
  default = ""
}

variable "vpc_public_subnets" {
  default = ""
}

# variable "security_group_id" {
#   default = ""
# }