variable "ec2_role_name" {
  description = "Name of the IAm role"
  type        = string
}

variable "glue_role_name" {
  description = "Name of the IAM role"
  type        = string
}

variable "ec2_policy_arns" {
  description = "List of IAM policy ARNs to attach"
  type = list(string)
}

variable "glue_policy_arns" {
  description = "List of IAM policy ARNs to attach"
  type = list(string)
}
