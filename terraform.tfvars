bucket_name = "datatroveai-database-talktodb-1122"
backend_instance_name = "test"
key_name = "test-1"
backend_instance_type = "t3.medium"
ami_id = "ami-04b4f1a9cf54c11d0"
ec2_role_name = "Datatrove_ec2_role"
glue_role_name = "Glue_crawler_role"
root_volume_size = "20"
db_instance_name = "datatrove_db"
db_instance_type = "t2.micro"
ec2_policy_arns = [
  "arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole",
  "arn:aws:iam::aws:policy/AWSGlueSchemaRegistryReadonlyAccess",
  "arn:aws:iam::aws:policy/AWSGlueSchemaRegistryFullAccess",
  "arn:aws:iam::aws:policy/AmazonS3FullAccess",
  "arn:aws:iam::aws:policy/AmazonBedrockFullAccess",
  "arn:aws:iam::aws:policy/AmazonAthenaFullAccess",
  "arn:aws:iam::aws:policy/service-role/AmazonDataZoneGlueManageAccessRolePolicy"
]

glue_policy_arns = [
  "arn:aws:iam::aws:policy/AmazonS3FullAccess",
  "arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole",
  "arn:aws:iam::aws:policy/AWSGlueConsoleFullAccess",
  "arn:aws:iam::aws:policy/AmazonAthenaFullAccess"
]

databases = ["default", "datatroveai-db", "datatroveai_healthcare"]

crawlers = [
    {
      name         = "table-extract-crawler"
      database_name = "datatroveai-db"
      s3_target    = "s3://datatroveai-database-talktodb/data1"
    },
    {
      name         = "TestCrawler"
      database_name = "datatroveai_healthcare"
      s3_target    = "s3://datatroveai-database-talktodb/data2"
    },
    {
      name         = "t_gpt_machine_data"
      database_name = "datatroveai-db"
      s3_target    = "s3://datatroveai-database-talktodb/data3"
    }
  ]

folder_names   = ["data1", "data2", "data3"]