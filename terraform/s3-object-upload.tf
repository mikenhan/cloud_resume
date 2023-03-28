resource "aws_s3_object" "object-upload" {
  for_each     = fileset("resume/", "*")
  key          = each.value
  bucket       = data.aws_s3_bucket.selected-bucket.bucket
  source       = "resume/${each.value}"
  etag         = filemd5("resume/${each.value}")
  acl          = "public-read"
}
