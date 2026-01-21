
output "s3_bucket_name" {
  value = aws_s3_bucket.log_bucket.bucket
}

output "sqs_queue_name" {
  value = aws_sqs_queue.log_queue.name
}

output "sns_topic_name" {
  value = aws_sns_topic.alerts_topic.name
}
