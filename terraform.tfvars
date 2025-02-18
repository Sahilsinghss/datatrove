bucket_name = "test-terraform-import-1122"
instance_name = "test"
key_name = "test-1"
instance_type = "t2.micro"
ami_id = "ami-04b4f1a9cf54c11d0"
role_name = "Datatrove_ec2_role"
policy_arns = [
  "arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole",
  "arn:aws:iam::aws:policy/AWSGlueSchemaRegistryReadonlyAccess",
  "arn:aws:iam::aws:policy/AWSGlueSchemaRegistryFullAccess",
  "arn:aws:iam::aws:policy/AmazonS3FullAccess",
  "arn:aws:iam::aws:policy/AmazonBedrockFullAccess",
  "arn:aws:iam::aws:policy/AmazonAthenaFullAccess",
  "arn:aws:iam::aws:policy/service-role/AmazonDataZoneGlueManageAccessRolePolicy"
]