resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
}

resource "aws_s3_object" "folders" {
  for_each = toset(var.folder_names)

  bucket = aws_s3_bucket.this.id
  key = "${each.value}/"

}