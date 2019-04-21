output "id" {
  value = "${aws_iam_access_key.s3-sts-manager.id}"
}

output "secret" {
  value = "${aws_iam_access_key.s3-sts-manager.secret}"
}
