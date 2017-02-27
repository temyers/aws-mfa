#aws-mfa

A collection of simple scripts for managing command line variables when you are using MFA.

This means that MFA can be removed from any SDKs

This uses the mechanism used by the AWS CLI to manage temporary MFA credentials.  It expects you already have the AWS-CLI installed and configured for MFA.

# Renew MFA credentials

Updating your credentials is a 2 step process:

```
aws-mfa-renew.sh
$(aws-mfa.sh)
```


## aws-mfa-renew.sh
This clears existing environment variables and calls `aws configure list` to re-authenticate.  This has the following benefits:
* Irrespective of what actual services you use and have access to, `aws configure list` is a lowest common denominator

## aws-mfa.sh

This script parses the cached file for the AWS CLI containing your MFA temporary tokens and exports them as environment variables

Run the file using `$()` to ensure the environment variables are exported within your running shell
