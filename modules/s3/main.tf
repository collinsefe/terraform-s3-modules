resource "aws_s3_bucket" "foo" {
  bucket        = var.bucket_name
  force_destroy = true
}

# resource "aws_s3_bucket_website_configuration" "this" {
#   bucket = module.s3.

#   index_document {
#     suffix = "index.html"
#   }
# }


# resource "aws_s3_bucket_public_access_block" "this" {
#   bucket = aws_s3_bucket.foo.id

#   block_public_acls   = false
#   block_public_policy = false
#   #   ignore_public_acls      = false
#   #   restrict_public_buckets = false
# }

# resource "aws_s3_bucket_ownership_controls" "this" {
#   bucket = aws_s3_bucket.foo.id
#   rule {
#     object_ownership = "BucketOwnerPreferred"
#   }
# }

# resource "aws_s3_bucket_acl" "foo" {
#   depends_on = [
#     aws_s3_bucket_ownership_controls.this,
#     aws_s3_bucket_public_access_block.this,
#   ]

#   bucket = aws_s3_bucket.foo.id
#   acl    = "public-read"
# }


# resource "aws_s3_object" "bar" {
#   bucket       = aws_s3_bucket.foo.id
#   content_type = var.content_type #"text/html"
#   key          = var.key          #"index.html"
#   source       = var.s3_source
#   source_hash  = var.source_hash

# }


# # resource "aws_s3_object" "bar" {
# #   bucket       = aws_s3_bucket.foo.id
# #   content_type = "text/html"
# #   key          = "index.html"
# #   source       = "modules/s3/assets/index.html"
# #   etag         = filemd5("modules/s3/assets/index.html")
# # }


# resource "aws_s3_bucket_policy" "that" {
#   bucket = aws_s3_bucket.foo.id
#   policy = data.aws_iam_policy_document.static_website.json
#   depends_on = [
#     aws_s3_bucket_ownership_controls.this,
#     aws_s3_bucket_public_access_block.this,
#     aws_s3_bucket_website_configuration.this
#   ]
# }

# data "aws_iam_policy_document" "static_website" {
#   statement {
#     effect = "Allow"

#     actions = [
#       "s3:GetObject"
#     ]

#     resources = [
#       aws_s3_bucket.foo.arn,
#       "${aws_s3_bucket.foo.arn}/*",
#     ]

#     principals {
#       type        = "AWS"
#       identifiers = ["*"]
#     }
#   }
# }
