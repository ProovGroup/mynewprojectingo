provider "aws" {
  region  = "eu-west-3"
  profile = "terraform"
  assume_role {
    role_arn = "arn:aws:iam::442809218657:role/terraform-deploy"
  }
}