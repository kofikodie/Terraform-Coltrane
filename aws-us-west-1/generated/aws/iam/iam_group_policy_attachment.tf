resource "aws_iam_group_policy_attachment" "tfer--Admins_AdministratorAccess" {
  group      = "Admins"
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--DevBuckets_AmazonEC2FullAccess" {
  group      = "DevBuckets"
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--DevBuckets_AmazonRDSFullAccess" {
  group      = "DevBuckets"
  policy_arn = "arn:aws:iam::aws:policy/AmazonRDSFullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--DevBuckets_AmazonS3FullAccess" {
  group      = "DevBuckets"
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--dio_Billing" {
  group      = "dio"
  policy_arn = "arn:aws:iam::aws:policy/job-function/Billing"
}

resource "aws_iam_group_policy_attachment" "tfer--elasticbean_AWSElasticBeanstalkFullAccess" {
  group      = "elasticbean"
  policy_arn = "arn:aws:iam::aws:policy/AWSElasticBeanstalkFullAccess"
}

resource "aws_iam_group_policy_attachment" "tfer--elasticbean_AmazonS3FullAccess" {
  group      = "elasticbean"
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}
