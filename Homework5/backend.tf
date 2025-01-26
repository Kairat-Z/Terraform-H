terraform {
  backend "s3" {
    bucket = "manual123"
    key    = "terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "lock-state"
  }
}
