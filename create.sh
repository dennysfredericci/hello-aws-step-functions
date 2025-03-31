aws s3 mb s3://hello-step-functions-test
sam deploy --template-file ./cf/template.yml --stack-name hello-step-functions --s3-bucket hello-step-functions-test --capabilities CAPABILITY_IAM
