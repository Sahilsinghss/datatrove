output "s3_bucket_arn" {
  value = module.s3.s3_bucket_arn
}

output "iam_instance_profile_name" {
  value = module.iam.iam_instance_profile_name
}
