resource "aws_iam_group_policy" "s3-manager-policy" {
  name  = "s3-manager-policy"
  group = "${aws_iam_group.media-manager.id}"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "S3ReadWritePermission",
            "Effect": "Allow",
            "Action": [
                "s3:PutObject",
                "s3:GetObject"
            ],
            "Resource": [
                "${aws_s3_bucket.app-storage.arn}/*"
            ]
        },
        {
            "Sid": "S3tListPermission",
            "Effect": "Allow",
            "Action": "s3:ListBucket",
            "Resource": [
                "${aws_s3_bucket.app-storage.arn}"
            ]
        }
    ]
}
EOF
}

resource "aws_iam_group_policy" "sts-manager-policy" {
  name  = "sts-manager-policy"
  group = "${aws_iam_group.media-manager.id}"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": "sts:GetFederationToken",
            "Resource": "*"
        }
    ]
}
EOF
}
