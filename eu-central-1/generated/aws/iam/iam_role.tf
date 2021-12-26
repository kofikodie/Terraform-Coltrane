resource "aws_iam_role" "tfer--AWSServiceRoleForECS" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Role to enable Amazon ECS to manage your cluster."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonECSServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForECS"
  path                 = "/aws-service-role/ecs.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForSupport" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "support.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Enables resource access for AWS to provide billing, administrative and support services"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForSupport"
  path                 = "/aws-service-role/support.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForTrustedAdvisor" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "trustedadvisor.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Access for the AWS Trusted Advisor Service to help reduce cost, increase performance, and improve security of your AWS environment."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForTrustedAdvisor"
  path                 = "/aws-service-role/trustedadvisor.amazonaws.com/"
}

resource "aws_iam_role" "tfer--ServerlessCrud" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description = "Allows Lambda functions to call AWS services on your behalf."

  inline_policy {
    name   = "DynamoReadWrite"
    policy = "{\n    \"Version\": \"2012-10-17\",\n    \"Statement\": [\n        {\n            \"Sid\": \"VisualEditor0\",\n            \"Effect\": \"Allow\",\n            \"Action\": [\n                \"dynamodb:DescribeReservedCapacityOfferings\",\n                \"dynamodb:ListGlobalTables\",\n                \"dynamodb:ListTables\",\n                \"dynamodb:DescribeReservedCapacity\",\n                \"dynamodb:ListBackups\",\n                \"dynamodb:PurchaseReservedCapacityOfferings\",\n                \"dynamodb:DescribeLimits\",\n                \"dynamodb:ListStreams\"\n            ],\n            \"Resource\": \"*\"\n        },\n        {\n            \"Sid\": \"VisualEditor1\",\n            \"Effect\": \"Allow\",\n            \"Action\": \"dynamodb:*\",\n            \"Resource\": \"arn:aws:dynamodb:us-east-1:906398844408:table/TodoTable\"\n        }\n    ]\n}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"]
  max_session_duration = "3600"
  name                 = "ServerlessCrud"
  path                 = "/"
}

resource "aws_iam_role" "tfer--WildRydesLambda" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description = "Allows Lambda functions to call AWS services on your behalf."

  inline_policy {
    name   = "NosqlD"
    policy = "{\n    \"Version\": \"2012-10-17\",\n    \"Statement\": [\n        {\n            \"Sid\": \"VisualEditor0\",\n            \"Effect\": \"Allow\",\n            \"Action\": [\n                \"dynamodb:DescribeReservedCapacityOfferings\",\n                \"dynamodb:ListGlobalTables\",\n                \"dynamodb:ListTables\",\n                \"dynamodb:DescribeReservedCapacity\",\n                \"dynamodb:ListBackups\",\n                \"dynamodb:PurchaseReservedCapacityOfferings\",\n                \"dynamodb:DescribeLimits\",\n                \"dynamodb:ListStreams\"\n            ],\n            \"Resource\": \"*\"\n        },\n        {\n            \"Sid\": \"VisualEditor1\",\n            \"Effect\": \"Allow\",\n            \"Action\": \"dynamodb:*\",\n            \"Resource\": \"arn:aws:dynamodb:us-east-1:906398844408:table/TodoTable\"\n        }\n    ]\n}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"]
  max_session_duration = "3600"
  name                 = "WildRydesLambda"
  path                 = "/"

  tags = {
    lambda = "admin"
  }

  tags_all = {
    lambda = "admin"
  }
}
