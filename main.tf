
resource "aws_s3_bucket" "main" {

  bucket = var.bucket_name
  acl    = var.acl

  force_destroy       = var.force_destroy
  object_lock_enabled = var.object_lock_enabled
  tags                = var.tags
}

resource "aws_s3_bucket_logging" "main" {

  count = var.enable_logging ? 1 : 0

  bucket = aws_s3_bucket.main.id

  target_bucket = aws_s3_bucket.main.id
  target_prefix = var.loging_target_prefix
}

resource "aws_s3_bucket_versioning" "main" {

  count = var.enable_versioning ? 1 : 0

  bucket = aws_s3_bucket.main.id

  versioning_configuration {
    status = "Enabled"
  }
}