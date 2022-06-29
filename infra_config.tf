resource "aws_imagebuilder_infrastructure_configuration" "infra_conf" {
  instance_profile_name = aws_iam_instance_profile.ec2_profile.name
  name                  = "infra_conf"
  instance_types        = ["t3.micro"]
}


resource "aws_iam_role" "ec2_profile" {
  name_prefix = "ec2_profile"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_iam_instance_profile" "ec2_profile" {
  name_prefix = "ec2_profile"
  role        = aws_iam_role.ec2_profile.name
}

resource "aws_iam_role_policy_attachment" "role-policy-attachment" {
  for_each = toset([
    "arn:aws:iam::aws:policy/EC2InstanceProfileForImageBuilder",
    "arn:aws:iam::aws:policy/EC2InstanceProfileForImageBuilderECRContainerBuilds",
    "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
  ])

  role       = aws_iam_role.ec2_profile.name
  policy_arn = each.value
}