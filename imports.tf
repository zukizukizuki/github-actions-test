# EC2 AMI
import {
  to = aws_ami.github_actions_test
  id = "ami-0408713e7e915276e"
}

# S3
import {
  to = aws_s3_bucket.github_actions_test
  id = "github-actions-storage-0001"
}

#ポリシー
import {
  to = aws_iam_policy.github_actions_test
  id = "arn:aws:iam::776811705601:policy/github-actions-frontend-deploy-policy"
}

# ロール
import {
  to = aws_iam_role.github_actions_test
  id = "github-actions-frontend-deploy"
}

# OIDC
import {
  to = aws_iam_openid_connect_provider.github_actions_test
  id = "arn:aws:iam::776811705601:oidc-provider/token.actions.githubusercontent.com"
}

# SG
import {
  to = aws_security_group.github_actions_test
  id = "sg-0bff58f21ca8ca2a0"
}