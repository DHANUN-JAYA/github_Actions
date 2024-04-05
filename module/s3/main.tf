resource "aws_s3_bucket" "example" {
  bucket = var.config["bucket_name"]
}