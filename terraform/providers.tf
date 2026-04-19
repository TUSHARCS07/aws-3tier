terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
 
   backend "s3" {
     bucket         = "my-terraform-state-bucket-123"
     key            = "eks/terraform.tfstate"     //inside s3 bucket / eks folder save my teraform state 
     region         = "us-east-1"
     dynamodb_table = "terraform-locks"    //  teraform-locks is tavble contain key pair LockID {string }  it will stop multiple or concurent write to the table and allow in queue system to write 
  }
}

provider "aws" {
  region = var.aws_region
}