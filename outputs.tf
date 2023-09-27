output "bucket_url" {
  value       = "s3://${aws_s3_bucket.terraform_state.bucket}"
  description = "URL for the remote state bucket"
}

