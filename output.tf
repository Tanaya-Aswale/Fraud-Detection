output "s3_bucket_name" {
  value = aws_s3_bucket.fraud_data.bucket
}

output "kinesis_stream" {
  value = aws_kinesis_stream.transactions.name
}

output "lambda_function" {
  value = aws_lambda_function.fraud_lambda.function_name
}
