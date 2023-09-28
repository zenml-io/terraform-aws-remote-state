# Basic AWS Remote State Backend

This is an example of setting up a AWS remote state bucket with Terraform. It
will provision a single S3 bucket.

To run the example:

- Set up or login to an AWS account with the relevant permissions enabled
  (specifically, the ability to provision S3 storage buckets).
- Update `example-config.tfvars` to match your needs. You can specify a S3
  bucket name that does not already exist as well as the region on which you'd
  like it to be provisioned in.
  (Alternatively, pass in overrides via the command line and the `-var` option).
- Run with `terraform init -var-file="example-config.tfvars"` and `terraform
  apply -var-file="example-config.tfvars"`.

After you run `terraform apply`, you should see the following output:

```
remote_state_bucket_url = "s3://<YOUR_BUCKET_NAME_GOES_HERE>"
```

To destroy the bucket, run `terraform destroy -var-file="example-config.tfvars"`.
