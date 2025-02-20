variable "bucket_name" {
  description = "Name of the existing S3 bucket"
  type        = string
}

variable "folder_names" {
  description = "List of folder names to create inside the bucket"
  type        = list(string)
}