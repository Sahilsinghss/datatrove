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

variable "iam_instance_profile" {
  description = "The IAM instance profile name"
  type        = string
}
