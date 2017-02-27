#!/bin/bash

SESSION_TOKEN_JSON=$(echo ~/.aws/cli/cache/`echo $AWS_PROFILE`--`aws configure get role_arn | tr ':' '_' | tr '/' '-'`.json)

echo "export AWS_SESSION_TOKEN=$(node -e "console.log(require('$SESSION_TOKEN_JSON').Credentials.SessionToken);")"
echo "export AWS_SECRET_ACCESS_KEY=$(node -e "console.log(require('$SESSION_TOKEN_JSON').Credentials.SecretAccessKey);")"
echo "export AWS_ACCESS_KEY_ID=$(node -e "console.log(require('$SESSION_TOKEN_JSON').Credentials.AccessKeyId);")"

