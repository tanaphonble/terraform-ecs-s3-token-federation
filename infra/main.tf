provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
  version    = "~> 2.5"
}

module "containers" {
  source = "containers"
  region = "${var.region}"
}

module "media-storage" {
  source = "file-storage"
  region = "${var.region}"
}
