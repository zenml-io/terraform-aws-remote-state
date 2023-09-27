variable "region" {
  description = "The region to deploy resources to"
  default     = "eu-north-1"
  type        = string
}

variable "bucket_name" {
  description = "The name of the S3 bucket to deploy"
  type        = string
}
