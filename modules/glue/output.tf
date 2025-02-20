output "database_names" {
  description = "List of created Glue databases"
  value       = [for db in aws_glue_catalog_database.databases : db.name]
}

output "crawler_names" {
  description = "List of created Glue crawlers"
  value       = [for crawler in aws_glue_crawler.crawlers : crawler.name]
}