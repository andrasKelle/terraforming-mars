resource "aws_s3_bucket" "terraforming_mars" {
  bucket    = "${var.project_name}"
  acl       = "private"

  tags = {
      Name  = "${var.project_name}"
    }
}