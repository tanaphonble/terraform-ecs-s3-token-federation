variable "access_key" {}

variable "secret_key" {}

variable "region" {
  default = "ap-southeast-1"
}

variable "az_count" {
  description = "Number of AZs to cover in a given region"
  default     = "2"
}

variable "app_image" {
  description = "Docker image to run in the ECS cluster"
  default     = "075615160807.dkr.ecr.ap-southeast-1.amazonaws.com/testapp:latest"
}

variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 8080
}

variable "app_count" {
  description = "Number of docker containers to run"
  default     = 0
}

# variable "ecs_autoscale_role" {
#   description = "Role arn for the ecsAutocaleRole"
#   default     = "arn:aws:iam::075615160807:role/ecsAutoscaleRole"
# }

variable "ecs_task_execution_role" {
  description = "Role arn for the ecsTaskExecutionRole"
  default     = "arn:aws:iam::075615160807:role/ecsTaskExecutionRole"
}

variable "health_check_path" {
  default = "/"
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "512"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "1024"
}