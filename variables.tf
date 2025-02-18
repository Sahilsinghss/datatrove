variable "bucket_name" {
  description = "Name of the existing S3 bucket"
  type        = string
}

variable "ami_id" {
  description = "Name of the existing ami id of instance"
  type        = string
}

variable "instance_type" {
  description = "Name of the existing instance type of instance"
  type        = string
}

variable "key_name" {
  description = "Name of the existing key_name of instance"
  type        = string
}

variable "instance_name" {
  description = "Name of the existing =instace name of instance"
  type        = string
}

variable "role_name" {
  description = "Name of the IAm role"
  type        = string
}

variable "policy_arns" {
  description = "List of IAM policy ARNs to attach"
  type = list(string)
}
