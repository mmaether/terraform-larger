resource "aws_s3_bucket" "terraform-s3" {
  bucket = "mmaether-terraform-s3"
  acl    = "private"
}