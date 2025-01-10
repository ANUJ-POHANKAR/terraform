output "cloudfront_domain_name" {
  value = aws_cloudfront_distribution.cdn.domain_name
}

output "website_endpoint" {
  value = aws_s3_bucket_website_configuration.website_config.website_endpoint
}