resource "aws_iam_group" "tfer--Admins" {
  name = "Admins"
  path = "/"
}

resource "aws_iam_group" "tfer--DevBuckets" {
  name = "DevBuckets"
  path = "/"
}

resource "aws_iam_group" "tfer--dio" {
  name = "dio"
  path = "/"
}

resource "aws_iam_group" "tfer--elasticbean" {
  name = "elasticbean"
  path = "/"
}
