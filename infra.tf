# # __generated__ by Terraform
# # Please review these resources and move them into your main configuration files.

# # __generated__ by Terraform from "ami-0408713e7e915276e"
# resource "aws_ami" "github_actions_test" {
#   architecture        = "x86_64"
#   boot_mode           = null
#   deprecation_time    = null
#   description         = null
#   ena_support         = true
#   image_location      = "776811705601/github-actions-test"
#   imds_support        = null
#   kernel_id           = null
#   name                = "github-actions-test"
#   ramdisk_id          = null
#   root_device_name    = "/dev/sda1"
#   sriov_net_support   = "simple"
#   tags                = {}
#   tags_all            = {}
#   tpm_support         = null
#   virtualization_type = "hvm"
#   ebs_block_device {
#     delete_on_termination = true
#     device_name           = "/dev/sda1"
#     encrypted             = false
#     iops                  = 0
#     outpost_arn           = null
#     snapshot_id           = "snap-053202eff76fb4344"
#     throughput            = 0
#     volume_size           = 8
#     volume_type           = "gp2"
#   }
#   ephemeral_block_device {
#     device_name  = "/dev/sdb"
#     virtual_name = "ephemeral0"
#   }
#   ephemeral_block_device {
#     device_name  = "/dev/sdc"
#     virtual_name = "ephemeral1"
#   }
# }

# # __generated__ by Terraform from "sg-0bff58f21ca8ca2a0"
# resource "aws_security_group" "github_actions_test" {
#   description = "launch-wizard-1 created 2023-08-11T06:08:15.146Z"
#   egress = [{
#     cidr_blocks      = ["0.0.0.0/0"]
#     description      = ""
#     from_port        = 0
#     ipv6_cidr_blocks = []
#     prefix_list_ids  = []
#     protocol         = "-1"
#     security_groups  = []
#     self             = false
#     to_port          = 0
#   }]
#   ingress = [{
#     cidr_blocks      = ["0.0.0.0/0"]
#     description      = ""
#     from_port        = 22
#     ipv6_cidr_blocks = []
#     prefix_list_ids  = []
#     protocol         = "tcp"
#     security_groups  = []
#     self             = false
#     to_port          = 22
#     }, {
#     cidr_blocks      = ["0.0.0.0/0"]
#     description      = ""
#     from_port        = 80
#     ipv6_cidr_blocks = []
#     prefix_list_ids  = []
#     protocol         = "tcp"
#     security_groups  = []
#     self             = false
#     to_port          = 80
#   }]
#   name                   = "launch-wizard-1"
#   name_prefix            = null
#   revoke_rules_on_delete = null
#   tags                   = {}
#   tags_all               = {}
#   vpc_id                 = "vpc-00a033e9e236414b1"
# }

# # __generated__ by Terraform from "github-actions-storage-0001"
# resource "aws_s3_bucket" "github_actions_test" {
#   bucket              = "github-actions-storage-0001"
#   bucket_prefix       = null
#   force_destroy       = null
#   object_lock_enabled = false
#   tags                = {}
#   tags_all            = {}
# }

# # __generated__ by Terraform
# resource "aws_iam_openid_connect_provider" "github_actions_test" {
#   client_id_list  = ["sts.amazonaws.com"]
#   tags            = {}
#   tags_all        = {}
#   thumbprint_list = ["1c58a3a8518e8759bf075b76b750d4f2df264fcd"]
#   url             = "https://token.actions.githubusercontent.com"
# }

# # __generated__ by Terraform from "arn:aws:iam::776811705601:policy/github-actions-frontend-deploy-policy"
# resource "aws_iam_policy" "github_actions_test" {
#   description = null
#   name        = "github-actions-frontend-deploy-policy"
#   name_prefix = null
#   path        = "/"
#   policy      = "{\"Statement\":[{\"Action\":[\"s3:PutObject\",\"s3:ListBucket\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:s3:::github-actions-storage-0001\",\"arn:aws:s3:::github-actions-storage-0001/*\"],\"Sid\":\"VisualEditor0\"}],\"Version\":\"2012-10-17\"}"
#   tags        = {}
#   tags_all    = {}
# }

# # __generated__ by Terraform from "github-actions-frontend-deploy"
# resource "aws_iam_role" "github_actions_test" {
#   assume_role_policy    = "{\"Statement\":[{\"Action\":\"sts:AssumeRoleWithWebIdentity\",\"Condition\":{\"StringEquals\":{\"token.actions.githubusercontent.com:aud\":\"sts.amazonaws.com\",\"token.actions.githubusercontent.com:sub\":\"repo:zukizukizuki/github-actions-test:ref:refs/heads/main\"}},\"Effect\":\"Allow\",\"Principal\":{\"Federated\":\"arn:aws:iam::776811705601:oidc-provider/token.actions.githubusercontent.com\"}}],\"Version\":\"2012-10-17\"}"
#   description           = null
#   force_detach_policies = false
#   managed_policy_arns   = ["arn:aws:iam::776811705601:policy/github-actions-frontend-deploy-policy"]
#   max_session_duration  = 3600
#   name                  = "github-actions-frontend-deploy"
#   name_prefix           = null
#   path                  = "/"
#   permissions_boundary  = null
#   tags                  = {}
#   tags_all              = {}
# }
