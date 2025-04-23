terraform {
  backend "s3" {
    bucket         = "dinghy-project-s3-bucket-aws"
    key            = "terraform/state.tfstate"
    region         = "us-east-1"
    encrypt        = true
    #dynamodb_table = "terraform-locks"
  }
}
