/**
 * Create and manage all S3 buckets.
 */

# Create a sample S3 bucket for general purpose.
resource "aws_s3_bucket" "terraform-s3" {
  bucket = "mmaether-terraform-s3"
  acl    = "private"
}

# Create an S3 bucket for CodePipeline
resource "aws_s3_bucket" "codepipeline_bucket" {
  bucket = "mmaether-codepipeline-bucket"
}