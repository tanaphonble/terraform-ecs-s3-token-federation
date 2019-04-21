resource "aws_iam_user" "s3-sts-manager" {
  name = "s3-credential-generator"
  path = "/media-manager/"

  tags {
    Name = "S3 STS manager"
  }
}

resource "aws_iam_access_key" "s3-sts-manager" {
  user   = "${aws_iam_user.s3-sts-manager.name}"
  status = "Active"
}

resource "aws_iam_group" "media-manager" {
  name = "media-manager"
  path = "/media-manager/"
}

resource "aws_iam_user_group_membership" "media-managers-group" {
  user = "${aws_iam_user.s3-sts-manager.name}"

  groups = [
    "${aws_iam_group.media-manager.name}",
  ]
}
