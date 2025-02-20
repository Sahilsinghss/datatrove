resource "aws_glue_catalog_database" "databases" {
  for_each = toset(var.databases)

  name = each.value
}

resource "aws_glue_crawler" "crawlers" {
  for_each = {for crawler in var.crawlers : crawler.name => crawler}

  name = each.value.name
  database_name = each.value.database_name
  role = var.iam_instance_profile

  s3_target {
    path = each.value.s3_target
  }
}