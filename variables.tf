variable "tag_collins" {
  default = "modules: collins instance"
}

variable "tag_bimbo" {
  default = "modules: bimbo instance"
}

variable "tag_okhai" {
  default = "modules: okhai instance"
}

variable "bucket_name_collins" {
  default = "modules-collinsbucketdemo-session-12042025"
}

variable "bucket_name_bimbo" {
  default = "modules-bimbobucketdemo-session-12042025"
}

variable "bucket_name_okhai" {
  default = "modules-okhaibucketdemo-session-12042025"
}



variable "key" {
  default = "index.html"
}

variable "content_type" {
  default = "text/html"
}

variable "s3_source" {
  default = "tools/index.html"
}

# variable "source_hash" {
#   type    = string
#   default = filemd5("modules/s3/assets/index.html")
# }






# variable "bucket_name" {
#   default = ""
# }

# variable "bucket_environment" {
#   default = ""
# }