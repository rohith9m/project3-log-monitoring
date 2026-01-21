import json
import boto3
import os

sns = boto3.client('sns')

SNS_TOPIC_ARN = os.environ.get("SNS_TOPIC_ARN")

def lambda_handler(event, context):
    for record in event['Records']:
        message = record['body']

        # Simple error detection logic
        if "ERROR" in message or "Exception" in message:
            sns.publish(
                TopicArn=SNS_TOPIC_ARN,
                Subject="Log Alert: Error Detected",
                Message=f"Critical log detected:\n{message}"
            )

    return {
        'statusCode': 200,
        'body': json.dumps('Log processing completed')
    }
