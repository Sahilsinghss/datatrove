provider "aws" {
  region = "us-east-1"
  profile = "serviceprofile"
}

module "nginx_ec2_instance" {
  source = "./modules/ec2-backend"

  ami_id = var.ami_id
  backend_instance_type = var.backend_instance_type
  key_name = var.key_name
  backend_instance_name = var.backend_instance_name
  iam_instance_profile = module.iam.iam_instance_profile_name
  root_volume_size = var.root_volume_size
  depends_on = [module.iam]
}

module "db_ec2_instance" {
  source = "./modules/ec2-database"

  ami_id = var.ami_id
  db_instance_type = var.db_instance_type
  db_instance_name = var.db_instance_name
  key_name = var.key_name
  iam_instance_profile = module.iam.iam_instance_profile_name
  root_volume_size = var.root_volume_size
  depends_on = [ module.iam ]
}

module "s3" {
  source = "./modules/s3"

  bucket_name = var.bucket_name

  folder_names = var.folder_names

}

module "glue" {
  source = "./modules/glue"

  databases = var.databases
  crawlers = var.crawlers
  iam_instance_profile = module.iam.iam_role_arn

  depends_on = [module.iam]
}

module "iam" {
  source = "./modules/iam"

  ec2_role_name = var.ec2_role_name
  glue_role_name = var.glue_role_name
  glue_policy_arns = var.glue_policy_arns
  ec2_policy_arns = var.ec2_policy_arns
}