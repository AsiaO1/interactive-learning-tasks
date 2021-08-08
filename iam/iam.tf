
resource "aws_iam_user" "new_user" {
  name = "bob"
  path = "/system/"

  tags = {
    Team = "DevOps"
  }
}

resource "aws_iam_group" "sysusers" {
  name = "sysusers"
  path = "/users/"
}

resource "aws_iam_user_group_membership" "attach_user_to_group" {
  user = aws_iam_user.new_user.name

  groups = [
    aws_iam_group.sysusers.name,
  ]
}

output "user" {
    value = aws_iam_user.new_user.name
}

output "group" {
    value = aws_iam_group.sysusers.name
}
