#!/bin/bash

set -e

UPLOAD_BUCKET=$1
STACK_NAME=$2
S3_BUCKET=$3
echo "Packing assets"
##
# Package API Gateway Assets
##
aws cloudformation package --template-file \
    trigger/lambda-s3-trigger.yml --output-template-file \
    lambda-s3-trigger-output.yml --s3-bucket $UPLOAD_BUCKET

echo "Deploying assets"
##
# Deploy Assets
##
aws cloudformation deploy --template-file \
    lambda-s3-trigger-output.yml --capabilities CAPABILITY_IAM \
    --stack-name ${STACK_NAME}  --parameter-overrides \
    BucketName=${S3_BUCKET}