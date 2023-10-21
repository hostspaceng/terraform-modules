#########################
### Creating IAM User ###
#########################

resource "aws_iam_user" "userlist" {
  count = length(var.username)
  name  = element(var.username, count.index)
}

###########################
### Creating IAM group ####
###########################

resource "aws_iam_group" "dev_group" {
  name = "DEV"
}

#################################
###   Adding users to group   ###
#################################

resource "aws_iam_user_group_membership" "user_group_membership" {
  count  = length(var.username)
  user   = element(var.username, count.index)
  groups = [aws_iam_group.dev_group.name]
}


###################################
###   IAM policy to acces EC2   ###
###################################


resource "aws_iam_policy" "dev_group_policy" {
  name        = "dev-policy"
  description = "Ec2 access policy"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
          "ec2:Get*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

#########################################
###   Attaching IAM policy to group   ###
#########################################

resource "aws_iam_group_policy_attachment" "custom_policy" {
  group      = aws_iam_group.dev_group.name
  policy_arn = aws_iam_policy.dev_group_policy.arn
}
