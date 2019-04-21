resource "aws_s3_bucket" "app-storage" {
  bucket = "${var.bucket_name}"
  acl    = "private"
  region = "${var.region}"

  tags = {
    Name = "File Storage"
  }
}
