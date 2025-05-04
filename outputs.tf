output "vpc_id" {
  value = module.vpc.vpc_id
}

output "s3_bucket_website_endpoint" {
  description = "The website endpoint, if the bucket is configured with a website. If not, this will be an empty string."
  value       = module.s3_collins.s3_bucket_website_endpoint
}

output "s3_bucket_website_domain" {
  description = "The domain of the website endpoint, if the bucket is configured with a website. If not, this will be an empty string. This is used to create Route 53 alias records. "
  value       = module.s3_collins.s3_bucket_website_domain
}
