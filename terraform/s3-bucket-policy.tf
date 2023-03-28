resource "aws_s3_bucket_policy" "bucket-policy" {
  bucket = data.aws_s3_bucket.selected-bucket.bucket
  policy = templatefile("s3-policy.json", { bucket = var.bucket_name })
}
