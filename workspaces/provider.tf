terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0" 
      #provider-version
    }
  }
  backend "s3" {
    # under this bucket, it will create envi. for dev/prod having key name workspace for both
    bucket = "daws-remote-state"
    key    = "workspace"
    region = "us-east-1"
    dynamodb_table = "daws-locking"
  }
}

provider "aws" {
    region = "us-east-1"
}