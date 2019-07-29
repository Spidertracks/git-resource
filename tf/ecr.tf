resource "aws_ecr_repository" "non-detached-head-git-resource" {
  name = "non-detached-head-git-resource"
}

resource "aws_ssm_parameter" "non-detached-head-git-resource-ops" {
  name  = "/concourse/OPS/repository_${aws_ecr_repository.non-detached-head-git-resource.name}"
  type  = "String"
  value = "${aws_ecr_repository.non-detached-head-git-resource.repository_url}"
}

resource "aws_ssm_parameter" "non-detached-head-git-resource-fe" {
  name  = "/concourse/FE/repository_${aws_ecr_repository.non-detached-head-git-resource.name}"
  type  = "String"
  value = "${aws_ecr_repository.non-detached-head-git-resource.repository_url}"
}
