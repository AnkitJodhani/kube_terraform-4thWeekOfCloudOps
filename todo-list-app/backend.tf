terraform {
  backend "s3" {
    bucket = "learning-terraform"
    key    = "backend/Todo-app-eks.tfstate"
    region = "us-east-1"
    dynamodb_table = "dynamoDB-state-locking"
  }
}