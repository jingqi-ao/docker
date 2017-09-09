
# Install and configure AWS cli

Install: http://docs.aws.amazon.com/cli/latest/userguide/installing.html

Configure: http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html

# Login AWS ECR

```
$(aws ecr get-login --no-include-email --region us-east-1)


```

# Logout

```
docker logout 1234567890.dkr.ecr.us-east-1.amazonaws.com
```