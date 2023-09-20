provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "Pavan" {
  instance_type = "t2.micro"
  ami = "ami-04cb4ca688797756f" # change this
  subnet_id = "	subnet-0764a3a21c5aa9864" # change this
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "pavan-97-seeramdas-raj" # change this
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}