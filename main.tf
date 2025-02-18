provider "aws" {
  region = "us-east-1"
  profile = "serviceprofile"
}

module "ec2_instance" {
  source = "./modules/ec2-backend"

  ami_id = var.ami_id
  instance_type = var.instance_type
  key_name = var.key_name
  instance_name = var.instance_name
  iam_instance_profile = module.iam.iam_instance_profile_name

  depends_on = [module.iam]
}

module "s3" {
  source = "./modules/s3"

  bucket_name = var.bucket_name

}

module "iam" {
  source = "./modules/iam"

  role_name = var.role_name
  policy_arns = var.policy_arns
}