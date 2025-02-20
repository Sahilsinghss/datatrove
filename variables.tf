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

variable "ec2_role_name" {
  description = "Name of the IAm role"
  type        = string
}

variable "glue_role_name" {
  description = "Name of the IAm role"
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

variable "root_volume_size" {
  description = "Root volume size for the instance"
  type        = number
}

variable "databases" {
  description = "List of Glue databases to be created"
  type        = list(string)
}

variable "crawlers" {
  description = "List of Glue crawlers"
  type = list(object({
    name          = string
    database_name = string
    s3_target     = string
  }))
}

variable "folder_names" {
  description = "List of folder names to create inside the bucket"
  type        = list(string)
}