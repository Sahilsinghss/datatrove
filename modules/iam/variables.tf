variable "role_name" {
  description = "Name of the IAm role"
  type        = string
}

variable "policy_arns" {
  description = "List of IAM policy ARNs to attach"
  type = list(string)
}
