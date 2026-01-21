
# Centralized Log Monitoring & Alerting Platform (AWS)

## Overview
This project implements a centralized log monitoring and alerting platform designed using AWS native services and DevOps best practices. The system focuses on reliable log ingestion, asynchronous processing, and alerting while remaining cost-aware and suitable for AWS Free Tier usage.

The project is built incrementally in phases to reflect real-world infrastructure design and scalability considerations.

---

## Architecture (Phase 1)
Phase 1 provisions the foundational messaging and storage components required for centralized logging and alerting.

### Components
- **Amazon S3** – Centralized log archival and long-term storage
- **Amazon SQS** – Buffer for asynchronous log processing and spike handling
- **Amazon SNS** – Notification channel for alerts
- **Terraform** – Infrastructure as Code for reproducible deployments

---

## Serverless Log Processing (Phase 2)

A serverless AWS Lambda function is used to process log messages asynchronously.  
Amazon SQS acts as a buffer between log producers and the Lambda function to handle spikes and decouple components.

### Flow
1. Log messages are pushed to Amazon SQS.
2. SQS triggers the Lambda function automatically using event source mapping.
3. The Lambda function analyzes log messages for error patterns.
4. Critical events trigger notifications via Amazon SNS.
5. Logs can be archived in Amazon S3 for audit and analysis.


---

## Log Processing Flow (High-Level)
1. Application logs are collected and prepared for centralized ingestion.
2. Logs are queued using Amazon SQS to decouple producers from consumers.
3. Processed or critical events trigger notifications through Amazon SNS.
4. Logs are archived in Amazon S3 for audit and analysis.

---

## Infrastructure as Code
All infrastructure is defined using Terraform to ensure:
- Version-controlled deployments
- Repeatable environments
- Clear separation of concerns

---

## Cost & Design Considerations
- Designed to operate within AWS Free Tier limits

---

## Design Considerations

- Asynchronous architecture using SQS to handle traffic spikes safely
- Serverless processing with AWS Lambda for scalability and low operational overhead
- Least-privilege IAM roles for improved security
- Infrastructure defined using Terraform for reproducibility and version control
- Designed with AWS Free Tier constraints in mind

---

## Future Enhancements
- Phase 2: Lambda-based log processing
- Phase 3: EC2-based monitoring node with Prometheus and Grafana
- Phase 4: Security auditing and alerting using CloudTrail

---


