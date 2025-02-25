variable "ami_id" {
  description = "Name of the existing ami id of instance"
  type        = string
}

variable "db_instance_type" {
  description = "Name of the existing instance type of instance"
  type        = string
}

variable "key_name" {
  description = "Name of the existing key_name of instance"
  type        = string
}

variable "db_instance_name" {
  description = "Name of the existing =instace name of instance"
  type        = string
}

variable "iam_instance_profile" {
  description = "The IAM instance profile name"
  type        = string
}

variable "root_volume_size" {
  description = "Root volume size for the instance"
  type        = number
}