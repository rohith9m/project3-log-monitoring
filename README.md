
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
- Asynchronous architecture to handle traffic spikes safely
- Modular design to allow future scaling with Lambda, EC2, and monitoring tools

---

## Future Enhancements
- Phase 2: Lambda-based log processing
- Phase 3: EC2-based monitoring node with Prometheus and Grafana
- Phase 4: Security auditing and alerting using CloudTrail

---

## Author
Rohith – DevOps & Cloud Engineering
