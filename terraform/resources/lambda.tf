resource "aws_lambda_function" "lambda-tech-challenge-api" {
  function_name    = "lambda-tech-challenge-api"
  role             = aws_iam_role.lambda_execution_role.arn
  handler          = "src.main.handler"
  runtime          = "python3.8"
  filename         = "lambda.zip"
  source_code_hash = filebase64sha256("lambda.zip")
  tags = {
    "environment": "production",
    "project": "tech-challenge-1",
    "resource_name": "lambda-tech-challenge-api"
    "purpose": "Provide images of fast api application",
    "status": "active"
  }
}