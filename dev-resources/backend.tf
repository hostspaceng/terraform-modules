terraform {
  backend "s3" {
    bucket = "iac-devops-playground"
    region = "us-east-1"
  }
}
