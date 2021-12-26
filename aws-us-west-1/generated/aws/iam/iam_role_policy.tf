resource "aws_iam_role_policy" "tfer--ServerlessCrud_DynamoReadWrite" {
  name = "DynamoReadWrite"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "dynamodb:DescribeReservedCapacityOfferings",
        "dynamodb:ListGlobalTables",
        "dynamodb:ListTables",
        "dynamodb:DescribeReservedCapacity",
        "dynamodb:ListBackups",
        "dynamodb:PurchaseReservedCapacityOfferings",
        "dynamodb:DescribeLimits",
        "dynamodb:ListStreams"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    },
    {
      "Action": "dynamodb:*",
      "Effect": "Allow",
      "Resource": "arn:aws:dynamodb:us-east-1:906398844408:table/TodoTable",
      "Sid": "VisualEditor1"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "ServerlessCrud"
}

resource "aws_iam_role_policy" "tfer--WildRydesLambda_NosqlD" {
  name = "NosqlD"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "dynamodb:DescribeReservedCapacityOfferings",
        "dynamodb:ListGlobalTables",
        "dynamodb:ListTables",
        "dynamodb:DescribeReservedCapacity",
        "dynamodb:ListBackups",
        "dynamodb:PurchaseReservedCapacityOfferings",
        "dynamodb:DescribeLimits",
        "dynamodb:ListStreams"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    },
    {
      "Action": "dynamodb:*",
      "Effect": "Allow",
      "Resource": "arn:aws:dynamodb:us-east-1:906398844408:table/TodoTable",
      "Sid": "VisualEditor1"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "WildRydesLambda"
}
