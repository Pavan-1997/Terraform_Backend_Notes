terraform {
  backend "s3" {
    bucket         = "pavan-97-seeramdas-raj" # change this
    key            = "Pavan/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}