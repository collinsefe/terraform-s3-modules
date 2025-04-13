resource "aws_s3_bucket_policy" "that" {
  bucket = aws_s3_bucket.foo.id
  policy = data.aws_iam_policy_document.static_website.json
  depends_on = [
    aws_s3_bucket_ownership_controls.this,
    aws_s3_bucket_public_access_block.this,
    aws_s3_bucket_website_configuration.this
  ]
}

data "aws_iam_policy_document" "static_website" {
  statement {
    effect = "Allow"

    actions = [
      "s3:GetObject"
    ]

    resources = [
      aws_s3_bucket.foo.arn,
      "${aws_s3_bucket.foo.arn}/*",
    ]

    principals {
      type        = "AWS"
      identifiers = ["*"]
    }
  }
}
