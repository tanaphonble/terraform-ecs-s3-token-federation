# Set up cloudwatch group and log stream and retain logs for 30 days
resource "aws_cloudwatch_log_group" "backend_log_group" {
  name              = "/ecs/backend-app"
  retention_in_days = 30

  tags {
    Name = "backend-log-group"
  }
}

resource "aws_cloudwatch_log_stream" "backend_log_stream" {
  name           = "backend-log-stream"
  log_group_name = "${aws_cloudwatch_log_group.backend_log_group.name}"
}
