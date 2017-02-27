#aws-mfa

A collection of simple scripts for managing command line variables when you are using MFA.

This means that MFA can be removed from any SDKs

This uses the mechanism used by the AWS CLI to manage temporary MFA credentials.  It expects you already have the AWS-CLI installed and configured for MFA.

# Renew MFA credentials
First, renew your MFA token on the command line:

`aws-mfa-renew.sh`

This clears existing environment variables and calls `aws configure list` to re-authenticate.  This has the following benefits:
* Irrespective of what actual services you use and have access to, `aws configure list` is a lowest common denominator


Export new variables

Run the following to update the environment variables with your temporary security token.

`$(aws-mfa.sh)`
