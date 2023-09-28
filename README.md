# AWS Remote State S3 Bucket module

Terraform module which creates remote state bucket that can be used as backend
for Terraform AWS provider.

These features are supported:

- region-specific bucket
- custom bucket naming
- specify versioning policy
- specify whether to force destroy or not
- apply custom bucket tags
- block public access to bucket

## Usage

```hcl
module "aws-remote-state" {
  source = "zenml-io/remote-state/aws"
  # We recommend pinning every module to a specific version
  # version = "x.x.x"

  region      = var.region
  bucket_name = var.bucket_name

  tags = {
      env = "dev"
      managed-by = "terraform"
  }
}
```

Use this with a AWS provider and this will spin up a bucket you can use as a
remote state Terraform backend.

## Help

Got a question about usage or extending the module? [File a GitHub issue](https://github.com/zenml-io/terraform-aws-remote-state/issues/new) or [join
our Slack Community](https://zenml.io/slack-invite/).

[![maintained-by-zenml](https://user-images.githubusercontent.com/3348134/173032050-ad923313-f2ce-4583-b27a-afcaa8b355e2.png)](https://zenml.io/)

## Contributing

If you are interested in being a contributor and want to get involved in
developing this project, we would love to hear from you! [File a GitHub issue](https://github.com/zenml-io/terraform-aws-remote-state/issues/new) or [join
our Slack Community](https://zenml.io/slack-invite/) and we'll see how we can
work together.

In general, PRs are welcome. We follow the typical "fork-and-pull" Git workflow.

 1. **Fork** the repo on GitHub
 2. **Clone** the project to your own machine
 3. **Commit** changes to your own branch
 4. **Push** your work back up to your fork
 5. Submit a **Pull Request** so that we can review your changes

**NOTE:** Be sure to merge the latest changes from "upstream" before making a pull request!
