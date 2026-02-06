resource "aws_kinesis_stream" "transactions" {
  name        = "${var.project_name}-transactions"
  shard_count = 2

  retention_period = 24

  tags = {
    Environment = var.environment
  }
}
