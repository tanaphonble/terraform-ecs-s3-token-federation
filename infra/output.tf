output "alb_hostname" {
  value = "${module.containers.alb_hostname}"
}

output "s3_sts_manager_id" {
  value = "${module.media-storage.id}"
}

output "s3_sts_manager_secret" {
  value = "${module.media-storage.secret}"
}
