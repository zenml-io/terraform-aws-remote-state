variable "region" {
  description = "The region to deploy resources to"
  default     = "eu-north-1"
  type        = string
}

variable "bucket_name" {
  description = "The name of the S3 bucket to deploy"
  type        = string
}

variable "force_destroy" {
  description = "A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error"
  default     = false
  type        = bool
}

variable "enable_versioning" {
  description = "A boolean that indicates all objects should be versioned"
  default     = true
  type        = bool
}

variable "tags" {
  description = "A map of tags to apply to the bucket"
  type        = map(string)
  default     = {}
}

variable "block_public_access" {
  description = "Whether or not to block public access to the bucket"
  default     = true
  type        = bool
}

variable "dynamodb_table_name" {
  description = "The name of the DynamoDB table to use for locking"
  default     = "terraform-remote-state-locks"
  type        = string
}
