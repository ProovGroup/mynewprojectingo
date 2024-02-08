terraform {
  backend "s3" {
    bucket  = "weproov-testweproov-shared-tfstates"
    key     = "eu-west-3/lambdas.tfstate"
    region  = "eu-west-3"
    profile = "weproov-iac" # you have to give the profile name here. not the variable("${var.AWS_PROFILE}")
    # Replace this with your DynamoDB table name!
    dynamodb_table = "weproov-legacy-locks"
    encrypt        = true
  }
}

