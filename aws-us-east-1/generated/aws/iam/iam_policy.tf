resource "aws_iam_policy" "tfer--AWSLambdaBasicExecutionRole-c3e00b1a-1b42-45aa-8590-67a6210d79e5" {
  name = "AWSLambdaBasicExecutionRole-c3e00b1a-1b42-45aa-8590-67a6210d79e5"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:eu-central-1:906398844408:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:eu-central-1:906398844408:log-group:/aws/lambda/laravel-app:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSLambdaBasicExecutionRole-ceff1c5a-5cb0-4eb4-b237-941aa66f01ac" {
  name = "AWSLambdaBasicExecutionRole-ceff1c5a-5cb0-4eb4-b237-941aa66f01ac"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:eu-central-1:906398844408:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:eu-central-1:906398844408:log-group:/aws/lambda/laravel-app:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSLambdaVPCAccessExecutionRole-ab342f4e-e88d-4399-a5bd-b1d7ee3c53ee" {
  name = "AWSLambdaVPCAccessExecutionRole-ab342f4e-e88d-4399-a5bd-b1d7ee3c53ee"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ec2:CreateNetworkInterface",
        "ec2:DeleteNetworkInterface",
        "ec2:DescribeNetworkInterfaces"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSLambdaVPNExecutionRole-57ddc742-e7e5-45a5-b5f9-f8fd2d2158ed" {
  name = "AWSLambdaVPNExecutionRole-57ddc742-e7e5-45a5-b5f9-f8fd2d2158ed"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "cloudwatch:PutMetricData"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "ec2:DescribeRegions",
        "ec2:DescribeVpnConnections"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}
