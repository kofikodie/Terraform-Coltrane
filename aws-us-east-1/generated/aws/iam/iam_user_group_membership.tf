resource "aws_iam_user_group_membership" "tfer--kofi-002F-Admins" {
  groups = ["Admins"]
  user   = "kofi"
}

resource "aws_iam_user_group_membership" "tfer--kofi-002F-dio" {
  groups = ["dio"]
  user   = "kofi"
}
