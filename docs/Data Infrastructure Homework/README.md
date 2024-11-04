# Data Engineer, Data Infrastructure Homework

For more information regarding this position, please refer to the [Vinted Careers page](https://careers.vinted.com/jobs/j/4389764101?q=data%20eng).

## Objective

The purpose of this project is to build a data processing pipeline on Google Cloud Platform. The pipeline should demonstrate your ability to set up infrastructure using Terraform, automate processes with GitHub Actions, and handle basic data transformations suitable for analytics.

## Task Summary

### Infrastructure Setup

- Use Terraform to create a GCP bucket for storing data and a BigQuery dataset for analysis.
- Add IAM roles and policies to ensure that only authorized users and services can access your resources.
- Create a service account with the necessary permissions.
- Implement a simple data ingestion pipeline using a Google Cloud Function to trigger a BigQuery load job when a new file CSV is added to the bucket You can assume the code for the ETL is available in whatever format you need, it's not necessary to write the logic.
- Optionally, implement a Python script you can use for ETL logic
- Optionally, modularise the solution so we can deploy it for different projects, tables, sources, buckets etc..

We recommend using [free cloud features and trial offer](https://cloud.google.com/free/docs/free-cloud-features) on gcp for the homework!

### Automation with GitHub Actions

- Set up a GitHub repository that hosts your code.
- Optionally, Use GitHub Actions to automate the Terraform infrastructure deployment.
- Optionally, setup Merge Queue

## Deliverables

- Github repository with all your code.
- Document your approach in a README file. Include instructions on setting up the environment, running the pipeline, and any assumptions made. We expect this to be accomplished in approximately 6 hours, so please choose which areas to focus on. If you don't have time to complete all the optional tasks, feel free to provide a written solution, and we can discuss it during the interview.
- Optionally, create a short video (5 minutes) demonstrating your solution and explaining the key components.

## Evaluation Criteria

- Correctness: Does the pipeline achieve the stated objectives?
- Code Quality: Is the code well-structured and documented?
- Automation: Effectiveness of GitHub Actions in automating tasks.
- Security Best Practices: Use of IAM for access controls.
- Completeness: All parts of the assignment completed and documented.

Thank you for your interest in joining Vinted. We look forward to reviewing your work and the possibility of welcoming you to our team.

**Good luck with the assignment!**
