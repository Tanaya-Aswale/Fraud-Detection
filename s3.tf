resource "aws_s3_bucket" "fraud_data" {
  bucket = "${var.project_name}-${var.environment}-data"

  tags = {
    Name        = "Fraud Data Bucket"
    Environment = var.environment
  }
}
