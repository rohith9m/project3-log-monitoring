resource "aws_s3_bucket" "log_bucket" {
  bucket = "${var.project_name}-${var.environment}-logs"
}

resource "aws_sqs_queue" "log_queue" {
  name = "${var.project_name}-${var.environment}-queue"
}

resource "aws_sns_topic" "alerts_topic" {
  name = "${var.project_name}-${var.environment}-alerts"
}

