provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
  version    = "~> 2.5"
}

module "media-storage" {
  source = "file-storage"
  region = "${var.region}"
}

module "containers" {
  source                = "containers"
  region                = "${var.region}"
  s3_manager_access_key = "${module.media-storage.id}"
  s3_manager_secret_key = "${module.media-storage.secret}"
}
