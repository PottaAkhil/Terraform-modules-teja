terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
    backend "s3" {
    bucket = "terrafrom-sai"
    key    = "ec2/dev.tfstate"
    region = "us-east-1"
    encrypt = true
    profile = "default"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  profile = "default"
} 
