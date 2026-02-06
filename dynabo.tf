resource "aws_dynamodb_table" "fraud_results" {
  name         = "fraud-results"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "transaction_id"

  attribute {
    name = "transaction_id"
    type = "S"
  }

  tags = {
    Environment = var.environment
  }
}
