resource "aws_lambda_function" "fraud_lambda" {
  function_name = "fraud-detection-lambda"
  role          = aws_iam_role.lambda_role.arn
  handler       = "lambda_function.lambda_handler"
  runtime       = "python3.10"
  timeout       = 30

  filename = "lambda.zip"

  environment {
    variables = {
      TABLE_NAME = aws_dynamodb_table.fraud_results.name
    }
  }
}
