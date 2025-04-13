module "s3_collins" {
  source       = "./modules/s3"
  bucket_name  = var.bucket_name_collins
  s3_source    = "tools/collins_index.html"
  source_hash  = filemd5("tools/collins_index.html")
  key          = "index.html"
  content_type = "text/html"

}

# module "s3_bimbo" {
#   source      = "./modules/s3"
#   bucket_name = var.bucket_name_bimbo
# }

# module "s3_okhai" {
#   source      = "./modules/s3"
#   bucket_name = var.bucket_name_okhai
# }