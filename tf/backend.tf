terraform {
  backend "s3" {
    bucket = "ops.terraform.spidertracks"
    key    = "ops.concourse.non-detached-head-git-resource"
    region = "us-west-2"
  }
}