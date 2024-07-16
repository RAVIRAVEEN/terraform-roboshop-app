terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
    }
  }
  
   backend "s3" {
    bucket = "devopsrank-remote-state"
    key    = "roboshop-app"
    region = "us-east-1"
     dynamodb_table = "devopsrank-locking"
    }
}


provider "aws" {
  region = "us-east-1"
}