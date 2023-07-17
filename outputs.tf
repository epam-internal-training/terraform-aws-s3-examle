output "s3_bucket_id" {
  description = "The name of the bucket."
  value       = aws_s3_bucket.main.id
}

output "s3_bucket_arn" {
  description = "The ARN of the bucket. Will be of format arn:aws:s3:::bucketname."
  value       = aws_s3_bucket.main.arn
}

output "s3_bucket_bucket_domain_name" {
  description = "The bucket domain name. Will be of format bucketname.s3.amazonaws.com."
  value       = aws_s3_bucket.main.bucket_domain_name
}