provider "aws" {
  region  = "eu-west-3"
  profile = "terraform"
  assume_role {
    role_arn = "arn:aws:iam::335474873628:role/terraform-deploy"
  }
}