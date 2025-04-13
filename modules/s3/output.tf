output "s3_bucket_website_endpoint" {
  value = aws_s3_bucket_website_configuration.this.website_endpoint
}


output "s3_bucket_website_domain" {
  value = aws_s3_bucket_website_configuration.this.website_domain
}

