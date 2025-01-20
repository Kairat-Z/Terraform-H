resource "aws_s3_bucket" "kaizen-kai" {
  bucket = "kaizen-kai"
}

resource "aws_s3_bucket" "kaizen-kai2" {
    bucket = "kaizen-kai2"
}

resource "aws_s3_bucket" "kaizen-kai3" {
    bucket = "kaizen-kai3"
}

# terraform import aws_s3_bucket.kaizen-kai2 kaizen-kai2
# terraform import aws_s3_bucket.kaizen-kai3 kaizen-kai3
