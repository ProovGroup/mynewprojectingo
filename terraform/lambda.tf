module "mynewprojectlambda" {
  source = "git::https://github.com/ProovGroup/infrastructure.git//iac/modules/lambda/terraform-aws-lambda"

  function_name = "mynewprojectlambda"
  description   = "mynewprojectlambda"
  handler                        = "main"
  timeout = 900
  runtime                        = "go1.x"
  attach_s3_policy     = false
attach_sqs_policy = false
attach_ssm_policy = false
  source_path = "function.zip"
}