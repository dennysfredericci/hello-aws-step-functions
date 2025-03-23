# Hello AWS Step Functions

This project demonstrates a simple AWS Step Functions implementation with API Gateway integration. It creates a serverless step function/state machine that makes an HTTP call to an external API and processes the response.

## Architecture

The project consists of:
- An AWS Step Function that makes an HTTP GET request to an external API
- API Gateway endpoint to trigger the Step Function
- Required IAM roles and permissions
- CloudWatch logging configuration

## Prerequisites

- AWS CLI installed and configured
- AWS SAM CLI installed
- An AWS account with appropriate permissions
- S3 bucket for deployment artifacts


## Deployment

1. Create an S3 bucket for deployment artifacts:
```bash
aws s3 mb s3://hello-step-functions-test
```

2. Deploy the stack using SAM:
3. 
```bash
sam deploy \
  --template-file ./cf/template.yml \
  --stack-name hello-step-functions \
  --s3-bucket hello-step-functions-test \
  --capabilities CAPABILITY_IAM
```

## Testing

After deployment, you'll receive an API Gateway URL in the stack outputs. You can test the endpoint using curl or Postman:

curl -X POST https://{api-id}.execute-api.{region}.amazonaws.com/prod/


## Cleanup

1. Delete the CloudFormation stack:

```bash
sam delete --stack-name hello-step-functions
```

2. Remove the S3 bucket:

```bash
aws s3 rb s3://hello-step-functions-test --force
```

