provider "aws" {
  region = var.region
}

module "aws-remote-state" {
  source = "../../"

  region      = var.region
  bucket_name = var.bucket_name
}

output "remote_state_bucket_url" {
  value = module.aws-remote-state.bucket_url
}
