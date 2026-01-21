resource "aws_s3_bucket" "log_bucket" {
  bucket = "${var.project_name}-${var.environment}-logs"
}

resource "aws_sqs_queue" "log_queue" {
  name = "${var.project_name}-${var.environment}-queue"
}

resource "aws_sns_topic" "alerts_topic" {
  name = "${var.project_name}-${var.environment}-alerts"
}
resource "aws_iam_role" "lambda_role" {
  name = "${var.project_name}-${var.environment}-lambda-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Principal = {
        Service = "lambda.amazonaws.com"
      }
      Action = "sts:AssumeRole"
    }]
  })
}
