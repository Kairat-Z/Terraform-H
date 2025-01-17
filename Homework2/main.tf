resource "aws_s3_bucket" "kaizen-kai" {
  bucket = "kaizen-kai"
}

resource "aws_s3_bucket" "kaizen-kai2" {
    bucket = "kaizen-kai2"
}

resource "aws_s3_bucket" "kaizen-kai3" {
    bucket = "kaizen-kai3"
}

resource "aws_iam_user" "users" {
  for_each = toset( ["jihyo", "sana", "momo", "dahyun"] )
  name     = each.key
}


resource "aws_iam_group" "group" {
  name = "twice"
}

resource "aws_iam_group_membership" "members" {
  name = "membership"
  users = [for x in aws_iam_user.users : x.name]
  group = aws_iam_group.group.name
}
