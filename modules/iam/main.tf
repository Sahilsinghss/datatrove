resource "aws_iam_role" "ec2" {
  name = var.ec2_role_name
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      }
    ]
  })
} 

resource "aws_iam_role" "glue" {
  name = var.glue_role_name
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "glue.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ec2_policy_attach" {
  count = length(var.ec2_policy_arns)
  role = aws_iam_role.ec2.name
  policy_arn = var.ec2_policy_arns[count.index]
}

resource "aws_iam_role_policy_attachment" "glue_policy_attach" {
  count = length(var.glue_policy_arns)
  role = aws_iam_role.glue.name
  policy_arn = var.glue_policy_arns[count.index]
}

resource "aws_iam_instance_profile" "this" {
  name = "${var.ec2_role_name}_profile"
  role = aws_iam_role.glue.name
}