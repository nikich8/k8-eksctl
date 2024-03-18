terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.32.1"
    }
  }

 
   backend "s3" {
    bucket = "max.bucket"
    key    = "eksctl"
    region = "us-east-1"
    dynamodb_table = "max-locking"
  
   }
}

provider "aws" {

   region  = "us-east-1"
   
}

