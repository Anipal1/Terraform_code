#
# Create S3 bucket
resource "aws_s3_bucket" "state_lock_bucket" {
  bucket = format("%s-%s-%s-s3-bucket", var.common_tags["AssetID"], var.common_tags["Environment"], var.common_tags["Project"])
  acl    = "private"

  versioning {
    enabled = true
  }


  tags = var.common_tags
}

# Create DynamoDB table for state locking
resource "aws_dynamodb_table" "state_lock_table" {
  name           = format("%s-%s-%s-dynamodb-table", var.common_tags["AssetID"], var.common_tags["Environment"], var.common_tags["Project"])
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = var.common_tags
}